; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/uxkern/extr_ux_exception.c_handle_ux_exception.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/uxkern/extr_ux_exception.c_handle_ux_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.sigacts* }
%struct.sigacts = type { i64*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@MAXSSIZ = common dso_local global i64 0, align 8
@SIGSEGV = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_ux_exception(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sigacts*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.TYPE_7__* @proc_findthread(i32 %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %23, i32* %5, align 4
  br label %152

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @ux_exception(i32 %25, i32 %26, i8* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_6__* @get_bsdthread_info(i32 %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %12, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @KERN_PROTECTION_FAILURE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %133

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @SIGBUS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %133

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %13, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAXSSIZ, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %132

52:                                               ; preds = %38
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %132

56:                                               ; preds = %52
  %57 = load i64, i64* @SIGSEGV, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @sigmask(i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load %struct.sigacts*, %struct.sigacts** %62, align 8
  store %struct.sigacts* %63, %struct.sigacts** %17, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %56
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %16, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %77
  %85 = load %struct.sigacts*, %struct.sigacts** %17, align 8
  %86 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @SIGSEGV, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SIG_IGN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %84
  %94 = load %struct.sigacts*, %struct.sigacts** %17, align 8
  %95 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %131, label %100

100:                                              ; preds = %93, %84, %77, %70, %56
  %101 = load i32, i32* %16, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %16, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i64, i64* @SIG_DFL, align 8
  %114 = load %struct.sigacts*, %struct.sigacts** %17, align 8
  %115 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @SIGSEGV, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 %113, i64* %118, align 8
  %119 = load i32, i32* %16, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %16, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %100, %93
  br label %132

132:                                              ; preds = %131, %52, %38
  br label %133

133:                                              ; preds = %132, %34, %24
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @TRUE, align 4
  %147 = call i32 @threadsignal(i32 %143, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %136, %133
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %150 = call i32 @proc_rele(%struct.TYPE_7__* %149)
  %151 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %22
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_7__* @proc_findthread(i32) #1

declare dso_local i32 @ux_exception(i32, i32, i8*) #1

declare dso_local %struct.TYPE_6__* @get_bsdthread_info(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @threadsignal(i32, i32, i32, i32) #1

declare dso_local i32 @proc_rele(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
