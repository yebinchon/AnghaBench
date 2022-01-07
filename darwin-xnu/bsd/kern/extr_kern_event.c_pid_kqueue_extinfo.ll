; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_pid_kqueue_extinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_pid_kqueue_extinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i64, i32*, i32* }
%struct.kqueue = type { i32 }
%struct.knote = type { i32 }
%struct.kevent_extinfo = type { i32 }

@PROC_PIDFDKQUEUE_KNOTES_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pid_kqueue_extinfo(%struct.TYPE_7__* %0, %struct.kqueue* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.kqueue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.knote*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.filedesc*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.kevent_extinfo*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.kqueue* %1, %struct.kqueue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.filedesc*, %struct.filedesc** %19, align 8
  store %struct.filedesc* %20, %struct.filedesc** %14, align 8
  store i64 0, i64* %15, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  store i64 %23, i64* %16, align 8
  store %struct.kevent_extinfo* null, %struct.kevent_extinfo** %17, align 8
  %24 = load i64, i64* %16, align 8
  %25 = load i64, i64* @PROC_PIDFDKQUEUE_KNOTES_MAX, align 8
  %26 = call i32 @min(i64 %24, i64 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %16, align 8
  %29 = mul i64 %28, 4
  %30 = call %struct.kevent_extinfo* @kalloc(i64 %29)
  store %struct.kevent_extinfo* %30, %struct.kevent_extinfo** %17, align 8
  %31 = load %struct.kevent_extinfo*, %struct.kevent_extinfo** %17, align 8
  %32 = icmp eq %struct.kevent_extinfo* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %13, align 4
  br label %123

35:                                               ; preds = %5
  %36 = load %struct.kevent_extinfo*, %struct.kevent_extinfo** %17, align 8
  %37 = load i64, i64* %16, align 8
  %38 = mul i64 %37, 4
  %39 = call i32 @bzero(%struct.kevent_extinfo* %36, i64 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = call i32 @proc_fdlock(%struct.TYPE_7__* %40)
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %62, %35
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %45 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %50 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call %struct.knote* @SLIST_FIRST(i32* %54)
  store %struct.knote* %55, %struct.knote** %11, align 8
  %56 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %57 = load %struct.knote*, %struct.knote** %11, align 8
  %58 = load %struct.kevent_extinfo*, %struct.kevent_extinfo** %17, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i64 @kevent_extinfo_emit(%struct.kqueue* %56, %struct.knote* %57, %struct.kevent_extinfo* %58, i64 %59, i64 %60)
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = call i32 @proc_fdunlock(%struct.TYPE_7__* %66)
  %68 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %69 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %99, %72
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %76 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = add nsw i32 %78, 1
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %73
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = call i32 @kqhash_lock(%struct.TYPE_7__* %82)
  %84 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %85 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call %struct.knote* @SLIST_FIRST(i32* %89)
  store %struct.knote* %90, %struct.knote** %11, align 8
  %91 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %92 = load %struct.knote*, %struct.knote** %11, align 8
  %93 = load %struct.kevent_extinfo*, %struct.kevent_extinfo** %17, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i64 @kevent_extinfo_emit(%struct.kqueue* %91, %struct.knote* %92, %struct.kevent_extinfo* %93, i64 %94, i64 %95)
  store i64 %96, i64* %15, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = call i32 @kqhash_unlock(%struct.TYPE_7__* %97)
  br label %99

99:                                               ; preds = %81
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %73

102:                                              ; preds = %73
  br label %103

103:                                              ; preds = %102, %65
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @min(i64 %106, i64 %107)
  %109 = sext i32 %108 to i64
  %110 = mul i64 4, %109
  %111 = icmp uge i64 %105, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.kevent_extinfo*, %struct.kevent_extinfo** %17, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i32 @min(i64 %116, i64 %117)
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @copyout(%struct.kevent_extinfo* %114, i32 %115, i32 %121)
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %103, %33
  %124 = load %struct.kevent_extinfo*, %struct.kevent_extinfo** %17, align 8
  %125 = icmp ne %struct.kevent_extinfo* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.kevent_extinfo*, %struct.kevent_extinfo** %17, align 8
  %128 = load i64, i64* %16, align 8
  %129 = mul i64 %128, 4
  %130 = call i32 @kfree(%struct.kevent_extinfo* %127, i64 %129)
  store %struct.kevent_extinfo* null, %struct.kevent_extinfo** %17, align 8
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* @PROC_PIDFDKQUEUE_KNOTES_MAX, align 8
  %137 = call i32 @min(i64 %135, i64 %136)
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %131
  %140 = load i32, i32* %13, align 4
  ret i32 %140
}

declare dso_local i32 @min(i64, i64) #1

declare dso_local %struct.kevent_extinfo* @kalloc(i64) #1

declare dso_local i32 @bzero(%struct.kevent_extinfo*, i64) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_7__*) #1

declare dso_local %struct.knote* @SLIST_FIRST(i32*) #1

declare dso_local i64 @kevent_extinfo_emit(%struct.kqueue*, %struct.knote*, %struct.kevent_extinfo*, i64, i64) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_7__*) #1

declare dso_local i32 @kqhash_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @kqhash_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @copyout(%struct.kevent_extinfo*, i32, i32) #1

declare dso_local i32 @kfree(%struct.kevent_extinfo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
