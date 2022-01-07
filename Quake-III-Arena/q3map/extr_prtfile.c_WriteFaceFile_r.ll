; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_prtfile.c_WriteFaceFile_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_prtfile.c_WriteFaceFile_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__*, i64, %struct.TYPE_8__** }
%struct.TYPE_7__ = type { %struct.TYPE_8__**, %struct.TYPE_6__*, %struct.TYPE_7__** }
%struct.TYPE_6__ = type { i32, i32** }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@pf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%i %i \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteFaceFile_r(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PLANENUM_LEAF, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %15, i64 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  call void @WriteFaceFile_r(%struct.TYPE_8__* %17)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  call void @WriteFaceFile_r(%struct.TYPE_8__* %22)
  br label %200

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %200

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %5, align 8
  br label %33

33:                                               ; preds = %192, %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %200

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %42, i64 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = icmp eq %struct.TYPE_8__* %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %191

50:                                               ; preds = %36
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = call i64 @Portal_Passable(%struct.TYPE_7__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %192

55:                                               ; preds = %50
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = icmp eq %struct.TYPE_8__* %60, %61
  br i1 %62, label %63, label %126

63:                                               ; preds = %55
  %64 = load i32, i32* @pf, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %120, %63
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %76
  %83 = load i32, i32* @pf, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @pf, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @WriteFloat(i32 %85, i32 %94)
  %96 = load i32, i32* @pf, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @WriteFloat(i32 %96, i32 %105)
  %107 = load i32, i32* @pf, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @WriteFloat(i32 %107, i32 %116)
  %118 = load i32, i32* @pf, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %82
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %76

123:                                              ; preds = %76
  %124 = load i32, i32* @pf, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %190

126:                                              ; preds = %55
  %127 = load i32, i32* @pf, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %133, i64 1
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %184, %126
  %144 = load i32, i32* %3, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %187

146:                                              ; preds = %143
  %147 = load i32, i32* @pf, align 4
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i32, i32* @pf, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @WriteFloat(i32 %149, i32 %158)
  %160 = load i32, i32* @pf, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @WriteFloat(i32 %160, i32 %169)
  %171 = load i32, i32* @pf, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @WriteFloat(i32 %171, i32 %180)
  %182 = load i32, i32* @pf, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %184

184:                                              ; preds = %146
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %3, align 4
  br label %143

187:                                              ; preds = %143
  %188 = load i32, i32* @pf, align 4
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %123
  br label %191

191:                                              ; preds = %190, %36
  br label %192

192:                                              ; preds = %191, %54
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %195, i64 %197
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  store %struct.TYPE_7__* %199, %struct.TYPE_7__** %5, align 8
  br label %33

200:                                              ; preds = %12, %28, %33
  ret void
}

declare dso_local i64 @Portal_Passable(%struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @WriteFloat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
