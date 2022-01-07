; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fasttrap_isa.c_fasttrap_pid_probe_thunk_instr64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fasttrap_isa.c_fasttrap_pid_probe_thunk_instr64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i64, i32, i32, %struct.TYPE_7__*, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@FASTTRAP_ARM64_RET_INSTR = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@FASTTRAP_T_ARM64_RET = common dso_local global i64 0, align 8
@FASTTRAP_T_ARM64_RETAB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32*, %struct.TYPE_8__*, i32*, i32, i64*)* @fasttrap_pid_probe_thunk_instr64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_pid_probe_thunk_instr64(i32* %0, %struct.TYPE_9__* %1, i32* %2, %struct.TYPE_8__* %3, i32* %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca [8 x i32], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64* %6, i64** %14, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @get_saved_state_pc(i32* %18)
  store i64 %19, i64* %16, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 8
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @bcopy(i32* %24, i32* %25, i32 %29)
  %31 = load i32, i32* @FASTTRAP_ARM64_RET_INSTR, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i64 %39, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %7
  %52 = load i32*, i32** %10, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = load i64, i64* %16, align 8
  %55 = call i32 @fasttrap_sigtrap(i32* %52, %struct.TYPE_8__* %53, i64 %54)
  %56 = load i64, i64* %16, align 8
  %57 = load i64*, i64** %14, align 8
  store i64 %56, i64* %57, align 8
  br label %116

58:                                               ; preds = %7
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %17, align 8
  %67 = call i64 @uwrite(i32* %59, i32* %60, i32 %65, i64 %66)
  %68 = load i64, i64* @KERN_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = load i64, i64* %16, align 8
  %74 = call i32 @fasttrap_sigtrap(i32* %71, %struct.TYPE_8__* %72, i64 %73)
  %75 = load i64, i64* %16, align 8
  %76 = load i64*, i64** %14, align 8
  store i64 %75, i64* %76, align 8
  br label %116

77:                                               ; preds = %58
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FASTTRAP_T_ARM64_RET, align 8
  %91 = icmp ne i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FASTTRAP_T_ARM64_RETAB, align 8
  %98 = icmp ne i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i64, i64* %16, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 6
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %16, align 8
  %105 = add nsw i64 %104, 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %14, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %77, %70, %51
  ret void
}

declare dso_local i64 @get_saved_state_pc(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @fasttrap_sigtrap(i32*, %struct.TYPE_8__*, i64) #1

declare dso_local i64 @uwrite(i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
