; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_data_primtype.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_data_primtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { float, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c".long %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".quad %ld\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".byte %d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".short %d\00", align 1
@OP_LABEL_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c".quad %s\00", align 1
@KIND_ARRAY = common dso_local global i32 0, align 4
@AST_GVAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c".quad %u\00", align 1
@AST_CONV = common dso_local global i32 0, align 4
@AST_ADDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"global variable expected, but got %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c".quad %s+%u\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"don't know how to handle\0A  <%s>\0A  <%s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, i32)* @emit_data_primtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_data_primtype(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %159 [
    i32 133, label %15
    i32 134, label %22
    i32 136, label %28
    i32 135, label %36
    i32 128, label %40
    i32 132, label %44
    i32 130, label %48
    i32 131, label %48
    i32 129, label %48
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load float, float* %17, align 8
  store float %18, float* %7, align 4
  %19 = bitcast float* %7 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %167

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = bitcast float* %24 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %167

28:                                               ; preds = %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = call i32 @eval_intexpr(%struct.TYPE_11__* %29, %struct.TYPE_11__** null)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %167

36:                                               ; preds = %3
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = call i32 @eval_intexpr(%struct.TYPE_11__* %37, %struct.TYPE_11__** null)
  %39 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %167

40:                                               ; preds = %3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = call i32 @eval_intexpr(%struct.TYPE_11__* %41, %struct.TYPE_11__** null)
  %43 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %167

44:                                               ; preds = %3
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = call i32 @eval_intexpr(%struct.TYPE_11__* %45, %struct.TYPE_11__** null)
  %47 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %167

48:                                               ; preds = %3, %3, %3
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OP_LABEL_ADDR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %167

59:                                               ; preds = %48
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @KIND_ARRAY, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %59
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 135
  br label %80

80:                                               ; preds = %69, %59
  %81 = phi i1 [ false, %59 ], [ %79, %69 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @emit_data_charptr(i32 %90, i32 %91)
  br label %158

93:                                               ; preds = %80
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @AST_GVAR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %157

104:                                              ; preds = %93
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = call i32 @eval_intexpr(%struct.TYPE_11__* %105, %struct.TYPE_11__** %9)
  store i32 %106, i32* %10, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %108 = icmp eq %struct.TYPE_11__* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  br label %167

112:                                              ; preds = %104
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %11, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @AST_CONV, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %112
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AST_ADDR, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121, %112
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %9, align 8
  br label %131

131:                                              ; preds = %127, %121
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @AST_GVAR, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %139 = call i8* @node2s(%struct.TYPE_11__* %138)
  %140 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %137, %131
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = call i32 @assert(%struct.TYPE_12__* %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %149, %154
  %156 = call i32 (i8*, i32, ...) @emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %148, i32 %155)
  br label %157

157:                                              ; preds = %141, %99
  br label %158

158:                                              ; preds = %157, %85
  br label %167

159:                                              ; preds = %3
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = call i32 @ty2s(%struct.TYPE_10__* %160)
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = call i8* @node2s(%struct.TYPE_11__* %164)
  %166 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %163, i8* %165)
  br label %167

167:                                              ; preds = %159, %158, %109, %54, %44, %40, %36, %28, %22, %15
  ret void
}

declare dso_local i32 @emit(i8*, i32, ...) #1

declare dso_local i32 @eval_intexpr(%struct.TYPE_11__*, %struct.TYPE_11__**) #1

declare dso_local i32 @emit_data_charptr(i32, i32) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @node2s(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @ty2s(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
