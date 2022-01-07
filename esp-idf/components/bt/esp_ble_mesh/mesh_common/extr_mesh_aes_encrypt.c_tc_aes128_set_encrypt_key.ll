; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_aes_encrypt.c_tc_aes128_set_encrypt_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_aes_encrypt.c_tc_aes128_set_encrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@__const.tc_aes128_set_encrypt_key.rconst = private unnamed_addr constant [11 x i32] [i32 0, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648, i32 452984832, i32 905969664], align 16
@TC_CRYPTO_FAIL = common dso_local global i32 0, align 4
@Nk = common dso_local global i32 0, align 4
@Nb = common dso_local global i32 0, align 4
@Nr = common dso_local global i32 0, align 4
@TC_CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_aes128_set_encrypt_key(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [11 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = bitcast [11 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([11 x i32]* @__const.tc_aes128_set_encrypt_key.rconst to i8*), i64 44, i1 false)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @TC_CRYPTO_FAIL, align 4
  store i32 %13, i32* %3, align 4
  br label %127

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @TC_CRYPTO_FAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %127

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %69, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @Nk, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @Nb, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @Nb, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul i32 %35, %36
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %33, %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @Nb, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul i32 %45, %46
  %48 = add i32 %47, 2
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %43, %52
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @Nb, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul i32 %55, %56
  %58 = add i32 %57, 3
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %53, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %25
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %21

72:                                               ; preds = %21
  br label %73

73:                                               ; preds = %122, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @Nb, align 4
  %76 = load i32, i32* @Nr, align 4
  %77 = add nsw i32 %76, 1
  %78 = mul i32 %75, %77
  %79 = icmp ult i32 %74, %78
  br i1 %79, label %80, label %125

80:                                               ; preds = %73
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sub i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @Nk, align 4
  %91 = urem i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %80
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @rotword(i32 %94)
  %96 = call i32 @subword(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @Nk, align 4
  %99 = udiv i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %96, %102
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %93, %80
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @Nk, align 4
  %110 = sub i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = xor i32 %113, %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  br label %122

122:                                              ; preds = %104
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %73

125:                                              ; preds = %73
  %126 = load i32, i32* @TC_CRYPTO_SUCCESS, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %17, %12
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @subword(i32) #2

declare dso_local i32 @rotword(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
