; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_fast_s_mp_mul_digs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_fast_s_mp_mul_digs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32* }

@MP_WARRAY = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)* @fast_s_mp_mul_digs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_s_mp_mul_digs(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* @MP_WARRAY, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @mp_grow(%struct.TYPE_7__* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @MP_OKAY, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %158

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = call i32 @MIN(i32 %44, i32 %51)
  store i32 %52, i32* %12, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %115, %43
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @MIN(i32 %61, i32 %62)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %20, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %19, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %22, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32* %78, i32** %23, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %19, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @MIN(i32 %83, i32 %85)
  store i32 %86, i32* %21, align 4
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %101, %57
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %21, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32*, i32** %22, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %22, align 8
  %94 = load i32, i32* %92, align 4
  %95 = load i32*, i32** %23, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 -1
  store i32* %96, i32** %23, align 8
  %97 = load i32, i32* %95, align 4
  %98 = mul nsw i32 %94, %97
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %87

104:                                              ; preds = %87
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @MP_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %28, i64 %109
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i64, i64* @DIGIT_BIT, align 8
  %113 = trunc i64 %112 to i32
  %114 = ashr i32 %111, %113
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %53

118:                                              ; preds = %53
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %24, align 8
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %140, %118
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %28, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %24, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %24, align 8
  store i32 %137, i32* %138, align 4
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %128

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %151, %143
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load i32*, i32** %24, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %24, align 8
  store i32 0, i32* %149, align 4
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %144

154:                                              ; preds = %144
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %156 = call i32 @mp_clamp(%struct.TYPE_7__* %155)
  %157 = load i32, i32* @MP_OKAY, align 4
  store i32 %157, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %158

158:                                              ; preds = %154, %40
  %159 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mp_grow(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @mp_clamp(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
