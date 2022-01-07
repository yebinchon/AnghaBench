; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_multprecision.c_multiprecision_inv_mod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_p_256_multprecision.c_multiprecision_inv_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@KEY_LENGTH_DWORDS_P256 = common dso_local global i32 0, align 4
@curve_p256 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@curve = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiprecision_inv_mod(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @KEY_LENGTH_DWORDS_P256, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @curve_p256, i32 0, i32 0), align 8
  store i32* %28, i32** %11, align 8
  br label %31

29:                                               ; preds = %3
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curve, i32 0, i32 0), align 8
  store i32* %30, i32** %11, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @multiprecision_copy(i32* %15, i32* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @multiprecision_init(i32* %19, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @multiprecision_init(i32* %23, i32 %37)
  %39 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 1, i32* %39, align 16
  br label %40

40:                                               ; preds = %143, %31
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @multiprecision_iszero(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %144

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %86, %46
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %87

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @multiprecision_rshift(i32* %55, i32* %56, i32 %57)
  %59 = getelementptr inbounds i32, i32* %19, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @multiprecision_rshift(i32* %19, i32* %19, i32 %64)
  br label %86

66:                                               ; preds = %54
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @multiprecision_add(i32* %19, i32* %19, i32* %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %19, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @multiprecision_rshift(i32* %19, i32* %19, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %19, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 31
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %19, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %79
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %66, %63
  br label %47

87:                                               ; preds = %47
  br label %88

88:                                               ; preds = %124, %87
  %89 = getelementptr inbounds i32, i32* %15, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %94, label %125

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @multiprecision_rshift(i32* %15, i32* %15, i32 %95)
  %97 = getelementptr inbounds i32, i32* %23, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @multiprecision_rshift(i32* %23, i32* %23, i32 %102)
  br label %124

104:                                              ; preds = %94
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @multiprecision_add(i32* %23, i32* %23, i32* %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %23, i64 %109
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @multiprecision_rshift(i32* %23, i32* %23, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %23, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 31
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %23, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %104, %101
  br label %88

125:                                              ; preds = %88
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i64 @multiprecision_compare(i32* %126, i32* %15, i32 %127)
  %129 = icmp sge i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @multiprecision_sub(i32* %131, i32* %132, i32* %15, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @multiprecision_sub_mod(i32* %19, i32* %19, i32* %23, i32 %135)
  br label %143

137:                                              ; preds = %125
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @multiprecision_sub(i32* %15, i32* %15, i32* %138, i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @multiprecision_sub_mod(i32* %23, i32* %23, i32* %19, i32 %141)
  br label %143

143:                                              ; preds = %137, %130
  br label %40

144:                                              ; preds = %40
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i64 @multiprecision_compare(i32* %23, i32* %145, i32 %146)
  %148 = icmp sge i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32*, i32** %4, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @multiprecision_sub(i32* %150, i32* %23, i32* %151, i32 %152)
  br label %158

154:                                              ; preds = %144
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @multiprecision_copy(i32* %155, i32* %23, i32 %156)
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %159)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @multiprecision_copy(i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_init(i32*, i32) #2

declare dso_local i32 @multiprecision_iszero(i32*, i32) #2

declare dso_local i32 @multiprecision_rshift(i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_add(i32*, i32*, i32*, i32) #2

declare dso_local i64 @multiprecision_compare(i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_sub(i32*, i32*, i32*, i32) #2

declare dso_local i32 @multiprecision_sub_mod(i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
