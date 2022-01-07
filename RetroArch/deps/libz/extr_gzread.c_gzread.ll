; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzread.c_gzread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzread.c_gzread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i64, i32, %struct.TYPE_9__, i64, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i8* }

@GZ_READ = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8
@Z_BUF_ERROR = common dso_local global i64 0, align 8
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@LOOK = common dso_local global i64 0, align 8
@MODE_COPY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzread(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %197

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 9
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %11, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GZ_READ, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @Z_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @Z_BUF_ERROR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %15
  store i32 -1, i32* %4, align 4
  br label %197

38:                                               ; preds = %31, %25
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = load i32, i32* @Z_DATA_ERROR, align 4
  %44 = call i32 @gz_error(%struct.TYPE_11__* %42, i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %197

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %197

49:                                               ; preds = %45
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 8
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @gz_skip(%struct.TYPE_11__* %57, i32 %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %197

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %49
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %192, %65
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  br label %86

81:                                               ; preds = %72
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %81 ]
  store i32 %87, i32* %9, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @memcpy(i8* %88, i32 %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %175

107:                                              ; preds = %66
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  br label %195

120:                                              ; preds = %112, %107
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @LOOK, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %133, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %130, 1
  %132 = icmp ult i32 %127, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %126, %120
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = call i32 @gz_fetch(%struct.TYPE_11__* %134)
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 -1, i32* %4, align 4
  br label %197

138:                                              ; preds = %133
  br label %192

139:                                              ; preds = %126
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MODE_COPY, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @gz_load(%struct.TYPE_11__* %146, i8* %147, i32 %148, i32* %9)
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 -1, i32* %4, align 4
  br label %197

152:                                              ; preds = %145
  br label %172

153:                                              ; preds = %139
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = call i32 @gz_decomp(%struct.TYPE_11__* %160)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  store i32 -1, i32* %4, align 4
  br label %197

164:                                              ; preds = %153
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %9, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %164, %152
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174, %86
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %7, align 4
  %178 = sub i32 %177, %176
  store i32 %178, i32* %7, align 4
  %179 = load i8*, i8** %6, align 8
  %180 = load i32, i32* %9, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8* %182, i8** %6, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %8, align 4
  %185 = add i32 %184, %183
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = add i32 %190, %186
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %175, %138
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %66, label %195

195:                                              ; preds = %192, %117
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %163, %151, %137, %63, %48, %41, %37, %14
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @gz_error(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @gz_skip(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @gz_fetch(%struct.TYPE_11__*) #1

declare dso_local i32 @gz_load(%struct.TYPE_11__*, i8*, i32, i32*) #1

declare dso_local i32 @gz_decomp(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
