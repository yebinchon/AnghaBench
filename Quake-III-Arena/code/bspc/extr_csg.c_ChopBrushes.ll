; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_csg.c_ChopBrushes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_csg.c_ChopBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_21__* }

@.str = private unnamed_addr constant [30 x i8] c"-------- Brush CSG ---------\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%6d original brushes\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%6d output brushes\00", align 1
@cancelconversion = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%6d output brushes\0D\0A\00", align 1
@startbrush = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @ChopBrushes(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %14 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = call i32 @CountBrushList(%struct.TYPE_21__* %15)
  %17 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  br label %20

20:                                               ; preds = %162, %149, %104, %81, %1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %22 = icmp ne %struct.TYPE_21__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %198

24:                                               ; preds = %20
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %7, align 8
  br label %26

26:                                               ; preds = %32, %24
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = icmp ne %struct.TYPE_21__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %7, align 8
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %4, align 8
  br label %38

38:                                               ; preds = %186, %36
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = icmp ne %struct.TYPE_21__* %39, null
  br i1 %40, label %41, label %188

41:                                               ; preds = %38
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %6, align 8
  %45 = load i64, i64* @cancelconversion, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  store %struct.TYPE_21__* %48, %struct.TYPE_21__** %50, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %8, align 8
  br label %186

52:                                               ; preds = %41
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %5, align 8
  br label %56

56:                                               ; preds = %169, %52
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = icmp ne %struct.TYPE_21__* %57, null
  br i1 %58, label %59, label %173

59:                                               ; preds = %56
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = call i64 @BrushesDisjoint(%struct.TYPE_21__* %60, %struct.TYPE_21__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %169

65:                                               ; preds = %59
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %10, align 8
  store i32 999999, i32* %11, align 4
  store i32 999999, i32* %12, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = call i64 @BrushGE(%struct.TYPE_21__* %66, %struct.TYPE_21__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = call %struct.TYPE_21__* @SubtractBrush(%struct.TYPE_21__* %71, %struct.TYPE_21__* %72)
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %9, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = icmp eq %struct.TYPE_21__* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %169

78:                                               ; preds = %70
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %80 = icmp ne %struct.TYPE_21__* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %84 = call %struct.TYPE_21__* @CullList(%struct.TYPE_21__* %82, %struct.TYPE_21__* %83)
  store %struct.TYPE_21__* %84, %struct.TYPE_21__** %3, align 8
  br label %20

85:                                               ; preds = %78
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %87 = call i32 @CountBrushList(%struct.TYPE_21__* %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %65
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = call i64 @BrushGE(%struct.TYPE_21__* %89, %struct.TYPE_21__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = call %struct.TYPE_21__* @SubtractBrush(%struct.TYPE_21__* %94, %struct.TYPE_21__* %95)
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %10, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = icmp eq %struct.TYPE_21__* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %169

101:                                              ; preds = %93
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %103 = icmp ne %struct.TYPE_21__* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = call i32 @FreeBrushList(%struct.TYPE_21__* %105)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %109 = call %struct.TYPE_21__* @CullList(%struct.TYPE_21__* %107, %struct.TYPE_21__* %108)
  store %struct.TYPE_21__* %109, %struct.TYPE_21__** %3, align 8
  br label %20

110:                                              ; preds = %101
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %112 = call i32 @CountBrushList(%struct.TYPE_21__* %111)
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110, %88
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %115 = icmp ne %struct.TYPE_21__* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %118 = icmp ne %struct.TYPE_21__* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  br label %169

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %128 = icmp ne %struct.TYPE_21__* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %131 = call i32 @FreeBrushList(%struct.TYPE_21__* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %134 = icmp ne %struct.TYPE_21__* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %137 = call i32 @FreeBrushList(%struct.TYPE_21__* %136)
  br label %138

138:                                              ; preds = %135, %132
  br label %169

139:                                              ; preds = %123, %120
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %145 = icmp ne %struct.TYPE_21__* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %148 = call i32 @FreeBrushList(%struct.TYPE_21__* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %152 = call %struct.TYPE_21__* @AddBrushListToTail(%struct.TYPE_21__* %150, %struct.TYPE_21__* %151)
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %7, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %155 = call %struct.TYPE_21__* @CullList(%struct.TYPE_21__* %153, %struct.TYPE_21__* %154)
  store %struct.TYPE_21__* %155, %struct.TYPE_21__** %3, align 8
  br label %20

156:                                              ; preds = %139
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %158 = icmp ne %struct.TYPE_21__* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %161 = call i32 @FreeBrushList(%struct.TYPE_21__* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %165 = call %struct.TYPE_21__* @AddBrushListToTail(%struct.TYPE_21__* %163, %struct.TYPE_21__* %164)
  store %struct.TYPE_21__* %165, %struct.TYPE_21__** %7, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %168 = call %struct.TYPE_21__* @CullList(%struct.TYPE_21__* %166, %struct.TYPE_21__* %167)
  store %struct.TYPE_21__* %168, %struct.TYPE_21__** %3, align 8
  br label %20

169:                                              ; preds = %138, %119, %100, %77, %64
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  store %struct.TYPE_21__* %172, %struct.TYPE_21__** %5, align 8
  br label %56

173:                                              ; preds = %56
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %175 = icmp ne %struct.TYPE_21__* %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %173
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  store %struct.TYPE_21__* %177, %struct.TYPE_21__** %179, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %180, %struct.TYPE_21__** %8, align 8
  br label %181

181:                                              ; preds = %176, %173
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %181, %47
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %187, %struct.TYPE_21__** %4, align 8
  br label %38

188:                                              ; preds = %38
  %189 = load i64, i64* @cancelconversion, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %2, align 8
  br label %198

193:                                              ; preds = %188
  %194 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @Log_Write(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %197, %struct.TYPE_21__** %2, align 8
  br label %198

198:                                              ; preds = %193, %191, %23
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  ret %struct.TYPE_21__* %199
}

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32 @CountBrushList(%struct.TYPE_21__*) #1

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i64 @BrushesDisjoint(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @BrushGE(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @SubtractBrush(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @CullList(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @FreeBrushList(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @AddBrushListToTail(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @Log_Write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
