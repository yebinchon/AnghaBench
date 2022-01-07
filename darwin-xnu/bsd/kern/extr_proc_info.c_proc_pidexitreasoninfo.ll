; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidexitreasoninfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidexitreasoninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, %struct.TYPE_7__* }
%struct.proc_exitreasoninfo = type { i64, i32, i32, i32, i32 }
%struct.proc_exitreasonbasicinfo = type { i64, i32, i32, i32 }

@P_LTRACED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@OS_REASON_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidexitreasoninfo(%struct.TYPE_6__* %0, %struct.proc_exitreasoninfo* %1, %struct.proc_exitreasonbasicinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.proc_exitreasoninfo*, align 8
  %7 = alloca %struct.proc_exitreasonbasicinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.proc_exitreasoninfo* %1, %struct.proc_exitreasoninfo** %6, align 8
  store %struct.proc_exitreasonbasicinfo* %2, %struct.proc_exitreasonbasicinfo** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = call i64 (...) @proc_selfpid()
  store i64 %11, i64* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = call i32 @proc_lock(%struct.TYPE_6__* %12)
  %14 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %15 = icmp ne %struct.proc_exitreasoninfo* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.proc_exitreasonbasicinfo*, %struct.proc_exitreasonbasicinfo** %7, align 8
  %18 = icmp ne %struct.proc_exitreasonbasicinfo* %17, null
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i1 [ true, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %24 = icmp eq %struct.proc_exitreasoninfo* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.proc_exitreasonbasicinfo*, %struct.proc_exitreasonbasicinfo** %7, align 8
  %27 = icmp eq %struct.proc_exitreasonbasicinfo* %26, null
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ true, %19 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %57

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @P_LTRACED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %57

53:                                               ; preds = %46, %39
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = call i32 @proc_unlock(%struct.TYPE_6__* %54)
  %56 = load i32, i32* @EACCES, align 4
  store i32 %56, i32* %4, align 4
  br label %166

57:                                               ; preds = %52, %38
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @OS_REASON_NULL, align 8
  %62 = icmp eq %struct.TYPE_7__* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = call i32 @proc_unlock(%struct.TYPE_6__* %64)
  %66 = load i32, i32* @ENOENT, align 4
  store i32 %66, i32* %4, align 4
  br label %166

67:                                               ; preds = %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = call i64 @kcdata_memory_get_used_bytes(i32* %78)
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %82 = icmp ne %struct.proc_exitreasoninfo* %81, null
  br i1 %82, label %83, label %137

83:                                               ; preds = %80
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %90 = getelementptr inbounds %struct.proc_exitreasoninfo, %struct.proc_exitreasoninfo* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %97 = getelementptr inbounds %struct.proc_exitreasoninfo, %struct.proc_exitreasoninfo* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %104 = getelementptr inbounds %struct.proc_exitreasoninfo, %struct.proc_exitreasoninfo* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %106 = getelementptr inbounds %struct.proc_exitreasoninfo, %struct.proc_exitreasoninfo* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %83
  %110 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %111 = getelementptr inbounds %struct.proc_exitreasoninfo, %struct.proc_exitreasoninfo* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109, %83
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = call i32 @proc_unlock(%struct.TYPE_6__* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  store i32 %118, i32* %4, align 4
  br label %166

119:                                              ; preds = %109
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %122 = getelementptr inbounds %struct.proc_exitreasoninfo, %struct.proc_exitreasoninfo* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %8, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.proc_exitreasoninfo*, %struct.proc_exitreasoninfo** %6, align 8
  %132 = getelementptr inbounds %struct.proc_exitreasoninfo, %struct.proc_exitreasoninfo* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @copyout(i32* %130, i32 %133, i64 %134)
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %125, %119
  br label %162

137:                                              ; preds = %80
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.proc_exitreasonbasicinfo*, %struct.proc_exitreasonbasicinfo** %7, align 8
  %144 = getelementptr inbounds %struct.proc_exitreasonbasicinfo, %struct.proc_exitreasonbasicinfo* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.proc_exitreasonbasicinfo*, %struct.proc_exitreasonbasicinfo** %7, align 8
  %151 = getelementptr inbounds %struct.proc_exitreasonbasicinfo, %struct.proc_exitreasonbasicinfo* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.proc_exitreasonbasicinfo*, %struct.proc_exitreasonbasicinfo** %7, align 8
  %158 = getelementptr inbounds %struct.proc_exitreasonbasicinfo, %struct.proc_exitreasonbasicinfo* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.proc_exitreasonbasicinfo*, %struct.proc_exitreasonbasicinfo** %7, align 8
  %161 = getelementptr inbounds %struct.proc_exitreasonbasicinfo, %struct.proc_exitreasonbasicinfo* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %137, %136
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = call i32 @proc_unlock(%struct.TYPE_6__* %163)
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %115, %63, %53
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64 @proc_selfpid(...) #1

declare dso_local i32 @proc_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_6__*) #1

declare dso_local i64 @kcdata_memory_get_used_bytes(i32*) #1

declare dso_local i32 @copyout(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
