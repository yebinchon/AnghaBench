; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcLoadState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcLoadState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, i32, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@SmpcRegs = common dso_local global %struct.TYPE_5__* null, align 8
@SmpcInternalVars = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SmpcLoadState(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 -4, i32* %8, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @yread(%struct.TYPE_4__* %7, i8* %13, i32 4, i32 7, i32* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 7
  %18 = bitcast i32* %17 to i8*
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @yread(%struct.TYPE_4__* %7, i8* %18, i32 4, i32 1, i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @yread(%struct.TYPE_4__* %7, i8* %24, i32 4, i32 32, i32* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = bitcast i32* %28 to i8*
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @yread(%struct.TYPE_4__* %7, i8* %29, i32 4, i32 1, i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = bitcast i32* %33 to i8*
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @yread(%struct.TYPE_4__* %7, i8* %34, i32 4, i32 1, i32* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @yread(%struct.TYPE_4__* %7, i8* %40, i32 4, i32 2, i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @yread(%struct.TYPE_4__* %7, i8* %46, i32 4, i32 2, i32* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = bitcast i32* %50 to i8*
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @yread(%struct.TYPE_4__* %7, i8* %51, i32 4, i32 1, i32* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SmpcRegs, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = bitcast i32* %55 to i8*
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @yread(%struct.TYPE_4__* %7, i8* %56, i32 4, i32 1, i32* %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %89

61:                                               ; preds = %3
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 48
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i64, i64* @SmpcInternalVars, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @yread(%struct.TYPE_4__* %7, i8* %68, i32 %69, i32 1, i32* %70)
  br label %88

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 48
  %75 = icmp eq i32 %74, 24
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i64, i64* @SmpcInternalVars, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @yread(%struct.TYPE_4__* %7, i8* %78, i32 24, i32 1, i32* %79)
  br label %87

81:                                               ; preds = %72
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 48
  %85 = load i32, i32* @SEEK_CUR, align 4
  %86 = call i32 @fseek(i32* %82, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %76
  br label %88

88:                                               ; preds = %87, %66
  br label %104

89:                                               ; preds = %3
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i64, i64* @SmpcInternalVars, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load i32, i32* %8, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @yread(%struct.TYPE_4__* %7, i8* %94, i32 %95, i32 1, i32* %96)
  br label %103

98:                                               ; preds = %89
  %99 = load i64, i64* @SmpcInternalVars, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @yread(%struct.TYPE_4__* %7, i8* %100, i32 4, i32 1, i32* %101)
  br label %103

103:                                              ; preds = %98, %92
  br label %104

104:                                              ; preds = %103, %88
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @yread(%struct.TYPE_4__*, i8*, i32, i32, i32*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
