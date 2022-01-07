; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp.h_iso2022_jp_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp.h_iso2022_jp_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@RET_ILUNI = common dso_local global i32 0, align 4
@STATE_ASCII = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@STATE_JISX0201ROMAN = common dso_local global i64 0, align 8
@STATE_JISX0208 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, i32)* @iso2022_jp_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_jp_wctomb(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ascii_wctomb(%struct.TYPE_6__* %19, i8* %20, i32 %21, i32 1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @RET_ILUNI, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %36, label %71

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @STATE_ASCII, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %46, i32* %5, align 4
  br label %191

47:                                               ; preds = %36
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @STATE_ASCII, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i8, i8* @ESC, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %52, i8* %54, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 40, i8* %56, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 66, i8* %58, align 1
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  store i8* %60, i8** %7, align 8
  %61 = load i64, i64* @STATE_ASCII, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %51, %47
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %64, i8* %66, align 1
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %191

71:                                               ; preds = %31
  br label %72

72:                                               ; preds = %71, %4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @jisx0201_wctomb(%struct.TYPE_6__* %73, i8* %74, i32 %75, i32 1)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @RET_ILUNI, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (...) @abort() #3
  unreachable

85:                                               ; preds = %80
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp slt i32 %88, 128
  br i1 %89, label %90, label %125

90:                                               ; preds = %85
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 4
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %100, i32* %5, align 4
  br label %191

101:                                              ; preds = %90
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i8, i8* @ESC, align 1
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 %106, i8* %108, align 1
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 40, i8* %110, align 1
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 74, i8* %112, align 1
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  store i8* %114, i8** %7, align 8
  %115 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  store i64 %115, i64* %10, align 8
  br label %116

116:                                              ; preds = %105, %101
  %117 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %118, i8* %120, align 1
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %191

125:                                              ; preds = %85
  br label %126

126:                                              ; preds = %125, %72
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @jisx0208_wctomb(%struct.TYPE_6__* %127, i8* %128, i32 %129, i32 2)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @RET_ILUNI, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %189

134:                                              ; preds = %126
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 2
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (...) @abort() #3
  unreachable

139:                                              ; preds = %134
  %140 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp slt i32 %142, 128
  br i1 %143, label %144, label %188

144:                                              ; preds = %139
  %145 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp slt i32 %147, 128
  br i1 %148, label %149, label %188

149:                                              ; preds = %144
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* @STATE_JISX0208, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 2, i32 5
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %159, i32* %5, align 4
  br label %191

160:                                              ; preds = %149
  %161 = load i64, i64* %10, align 8
  %162 = load i64, i64* @STATE_JISX0208, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %160
  %165 = load i8, i8* @ESC, align 1
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 %165, i8* %167, align 1
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  store i8 36, i8* %169, align 1
  %170 = load i8*, i8** %7, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  store i8 66, i8* %171, align 1
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 3
  store i8* %173, i8** %7, align 8
  %174 = load i64, i64* @STATE_JISX0208, align 8
  store i64 %174, i64* %10, align 8
  br label %175

175:                                              ; preds = %164, %160
  %176 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  store i8 %177, i8* %179, align 1
  %180 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = load i8*, i8** %7, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8 %181, i8* %183, align 1
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load i32, i32* %15, align 4
  store i32 %187, i32* %5, align 4
  br label %191

188:                                              ; preds = %144, %139
  br label %189

189:                                              ; preds = %188, %126
  %190 = load i32, i32* @RET_ILUNI, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %189, %175, %158, %116, %99, %62, %45
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @ascii_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0201_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @jisx0208_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
