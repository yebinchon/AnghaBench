; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_mbedtls_blowfish_setkey.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_mbedtls_blowfish_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32* }

@MBEDTLS_BLOWFISH_MIN_KEY_BITS = common dso_local global i32 0, align 4
@MBEDTLS_BLOWFISH_MAX_KEY_BITS = common dso_local global i32 0, align 4
@MBEDTLS_ERR_BLOWFISH_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@S = common dso_local global i32** null, align 8
@MBEDTLS_BLOWFISH_ROUNDS = common dso_local global i32 0, align 4
@P = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_blowfish_setkey(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MBEDTLS_BLOWFISH_MIN_KEY_BITS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MBEDTLS_BLOWFISH_MAX_KEY_BITS, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = urem i32 %22, 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17, %3
  %26 = load i32, i32* @MBEDTLS_ERR_BLOWFISH_INVALID_KEY_LENGTH, align 4
  store i32 %26, i32* %4, align 4
  br label %179

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = lshr i32 %28, 3
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %61, %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %35, 256
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load i32**, i32*** @S, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %46, i32* %56, align 4
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %34

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %30

64:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %107, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @MBEDTLS_BLOWFISH_ROUNDS, align 4
  %68 = add nsw i32 %67, 2
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %90, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = shl i32 %75, 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %76, %83
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %88, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load i32*, i32** @P, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = xor i32 %98, %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %93
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %65

110:                                              ; preds = %65
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %134, %110
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @MBEDTLS_BLOWFISH_ROUNDS, align 4
  %114 = add nsw i32 %113, 2
  %115 = icmp ult i32 %112, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = call i32 @blowfish_enc(%struct.TYPE_4__* %117, i32* %12, i32* %13)
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = add i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %126, i32* %133, align 4
  br label %134

134:                                              ; preds = %116
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, 2
  store i32 %136, i32* %8, align 4
  br label %111

137:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %175, %137
  %139 = load i32, i32* %8, align 4
  %140 = icmp ult i32 %139, 4
  br i1 %140, label %141, label %178

141:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %171, %141
  %143 = load i32, i32* %9, align 4
  %144 = icmp ult i32 %143, 256
  br i1 %144, label %145, label %174

145:                                              ; preds = %142
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = call i32 @blowfish_enc(%struct.TYPE_4__* %146, i32* %12, i32* %13)
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %148, i32* %158, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = add i32 %167, 1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %159, i32* %170, align 4
  br label %171

171:                                              ; preds = %145
  %172 = load i32, i32* %9, align 4
  %173 = add i32 %172, 2
  store i32 %173, i32* %9, align 4
  br label %142

174:                                              ; preds = %142
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %138

178:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %25
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @blowfish_enc(%struct.TYPE_4__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
