; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_unicode.h_mb_to_uc_write_replacement.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_unicode.h_mb_to_uc_write_replacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb_to_uc_fallback_locals = type { i64, i8*, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 (i32, i32)* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i8*, i32, i64)* }
%struct.TYPE_8__ = type { i32, i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)* }
%struct.uc_to_mb_fallback_locals = type { i8*, i64, i64 }

@E2BIG = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@uc_to_mb_write_replacement = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*)* @mb_to_uc_write_replacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb_to_uc_write_replacement(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mb_to_uc_fallback_locals*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uc_to_mb_fallback_locals, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.mb_to_uc_fallback_locals*
  store %struct.mb_to_uc_fallback_locals* %15, %struct.mb_to_uc_fallback_locals** %7, align 8
  %16 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %17 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %192

20:                                               ; preds = %3
  %21 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %22 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %21, i32 0, i32 3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %8, align 8
  %24 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %25 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %28 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %180, %20
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %185

33:                                               ; preds = %30
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** @E2BIG, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %42 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %185

43:                                               ; preds = %33
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_11__*, i8*, i32, i64)*, i32 (%struct.TYPE_11__*, i8*, i32, i64)** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 %47(%struct.TYPE_11__* %48, i8* %49, i32 %50, i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @RET_ILUNI, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %138

57:                                               ; preds = %43
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 7
  %60 = icmp eq i32 %59, 7168
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %179

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @unicode_transliterate(%struct.TYPE_11__* %68, i32 %69, i8* %70, i64 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @RET_ILUNI, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %138

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  br label %138

84:                                               ; preds = %78
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)*, i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)** %87, align 8
  %89 = icmp ne i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)* %88, null
  br i1 %89, label %90, label %120

90:                                               ; preds = %84
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %13, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %13, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  %95 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %13, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)*, i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @uc_to_mb_write_replacement, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %99(i32 %100, i32 %101, %struct.uc_to_mb_fallback_locals* %13, i32 %105)
  %107 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %13, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %90
  %111 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %13, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %114 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %185

115:                                              ; preds = %90
  %116 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %13, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %9, align 8
  %118 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %13, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %138

120:                                              ; preds = %84
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_11__*, i8*, i32, i64)*, i32 (%struct.TYPE_11__*, i8*, i32, i64)** %124, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 %125(%struct.TYPE_11__* %126, i8* %127, i32 65533, i64 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @RET_ILUNI, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %138

134:                                              ; preds = %121
  %135 = load i64, i64* @EILSEQ, align 8
  %136 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %137 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %185

138:                                              ; preds = %133, %115, %83, %76, %56
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i8*, i8** @E2BIG, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %145 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %185

146:                                              ; preds = %138
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32 (i32, i32)*, i32 (i32, i32)** %149, align 8
  %151 = icmp ne i32 (i32, i32)* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32 (i32, i32)*, i32 (i32, i32)** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %156(i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %152, %146
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %10, align 8
  %167 = icmp ule i64 %165, %166
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = call i32 (...) @abort() #3
  unreachable

170:                                              ; preds = %163
  %171 = load i32, i32* %12, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %9, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %10, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %10, align 8
  br label %179

179:                                              ; preds = %170, %61
  br label %180

180:                                              ; preds = %179
  %181 = load i32*, i32** %4, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %4, align 8
  %183 = load i64, i64* %5, align 8
  %184 = add i64 %183, -1
  store i64 %184, i64* %5, align 8
  br label %30

185:                                              ; preds = %141, %134, %110, %38, %30
  %186 = load i8*, i8** %9, align 8
  %187 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %188 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  %189 = load i64, i64* %10, align 8
  %190 = load %struct.mb_to_uc_fallback_locals*, %struct.mb_to_uc_fallback_locals** %7, align 8
  %191 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %190, i32 0, i32 2
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %185, %3
  ret void
}

declare dso_local i32 @unicode_transliterate(%struct.TYPE_11__*, i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
