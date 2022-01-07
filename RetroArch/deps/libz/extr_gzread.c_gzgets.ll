; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzread.c_gzgets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzread.c_gzgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32, i8*, i32 }

@GZ_READ = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8
@Z_BUF_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gzgets(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  store i8* null, i8** %4, align 8
  br label %174

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %12, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GZ_READ, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @Z_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @Z_BUF_ERROR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %22
  store i8* null, i8** %4, align 8
  br label %174

43:                                               ; preds = %36, %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @gz_skip(%struct.TYPE_6__* %51, i32 %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i8* null, i8** %4, align 8
  br label %174

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i8*, i8** %6, align 8
  store i8* %60, i8** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %165

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %162, %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %74 = call i32 @gz_fetch(%struct.TYPE_6__* %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8* null, i8** %4, align 8
  br label %174

77:                                               ; preds = %72, %66
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  br label %164

86:                                               ; preds = %77
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %8, align 4
  br label %100

95:                                               ; preds = %86
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  br label %100

100:                                              ; preds = %95, %93
  %101 = phi i32 [ %94, %93 ], [ %99, %95 ]
  store i32 %101, i32* %9, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i64 @memchr(i8* %105, i8 signext 10, i32 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %100
  %112 = load i8*, i8** %11, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %112 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = add i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %111, %100
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @memcpy(i8* %123, i8* %127, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub i32 %134, %130
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = zext i32 %136 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %139, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = add i32 %147, %143
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %8, align 4
  %151 = sub i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %6, align 8
  br label %156

156:                                              ; preds = %122
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i8*, i8** %11, align 8
  %161 = icmp eq i8* %160, null
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi i1 [ false, %156 ], [ %161, %159 ]
  br i1 %163, label %66, label %164

164:                                              ; preds = %162, %83
  br label %165

165:                                              ; preds = %164, %59
  %166 = load i8*, i8** %6, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = icmp eq i8* %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i8* null, i8** %4, align 8
  br label %174

170:                                              ; preds = %165
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  store i8 0, i8* %172, align 1
  %173 = load i8*, i8** %10, align 8
  store i8* %173, i8** %4, align 8
  br label %174

174:                                              ; preds = %170, %169, %76, %57, %42, %21
  %175 = load i8*, i8** %4, align 8
  ret i8* %175
}

declare dso_local i32 @gz_skip(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gz_fetch(%struct.TYPE_6__*) #1

declare dso_local i64 @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
