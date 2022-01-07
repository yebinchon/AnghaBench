; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_internal.c_crypto_hash_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_internal.c_crypto_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_hash* @crypto_hash_init(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.crypto_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.crypto_hash*, align 8
  %9 = alloca [64 x i32], align 16
  %10 = alloca [32 x i32], align 16
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i64 @os_zalloc(i32 40)
  %13 = inttoptr i64 %12 to %struct.crypto_hash*
  store %struct.crypto_hash* %13, %struct.crypto_hash** %8, align 8
  %14 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %15 = icmp eq %struct.crypto_hash* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %171

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %20 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %166 [
    i32 130, label %22
    i32 129, label %27
    i32 133, label %32
    i32 132, label %99
  ]

22:                                               ; preds = %17
  %23 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @MD5Init(i32* %25)
  br label %169

27:                                               ; preds = %17
  %28 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %29 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @SHA1Init(i32* %30)
  br label %169

32:                                               ; preds = %17
  %33 = load i64, i64* %7, align 8
  %34 = icmp ugt i64 %33, 256
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %37 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = call i32 @MD5Init(i32* %38)
  %40 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %41 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @MD5Update(i32* %42, i32* %43, i32 %45)
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %48 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %49 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = call i32 @MD5Final(i32* %47, i32* %50)
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  store i32* %52, i32** %6, align 8
  store i64 16, i64* %7, align 8
  br label %53

53:                                               ; preds = %35, %32
  %54 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %55 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @os_memcpy(i32* %56, i32* %57, i64 %58)
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %62 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @os_memcpy(i32* %63, i32* %64, i64 %65)
  %67 = load i64, i64* %7, align 8
  %68 = icmp ult i64 %67, 256
  br i1 %68, label %69, label %77

69:                                               ; preds = %53
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 256, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @os_memset(i32* %72, i32 0, i32 %75)
  br label %77

77:                                               ; preds = %69, %53
  store i64 0, i64* %11, align 8
  br label %78

78:                                               ; preds = %86, %77
  %79 = load i64, i64* %11, align 8
  %80 = icmp ult i64 %79, 256
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %84, 54
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %78

89:                                               ; preds = %78
  %90 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %91 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = call i32 @MD5Init(i32* %92)
  %94 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %95 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %98 = call i32 @MD5Update(i32* %96, i32* %97, i32 256)
  br label %169

99:                                               ; preds = %17
  %100 = load i64, i64* %7, align 8
  %101 = icmp ugt i64 %100, 256
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  %103 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %104 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = call i32 @SHA1Init(i32* %105)
  %107 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %108 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @SHA1Update(i32* %109, i32* %110, i32 %112)
  %114 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %115 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %116 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = call i32 @SHA1Final(i32* %114, i32* %117)
  %119 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  store i32* %119, i32** %6, align 8
  store i64 20, i64* %7, align 8
  br label %120

120:                                              ; preds = %102, %99
  %121 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %122 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @os_memcpy(i32* %123, i32* %124, i64 %125)
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %129 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %131 = load i32*, i32** %6, align 8
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @os_memcpy(i32* %130, i32* %131, i64 %132)
  %134 = load i64, i64* %7, align 8
  %135 = icmp ult i64 %134, 256
  br i1 %135, label %136, label %144

136:                                              ; preds = %120
  %137 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i64, i64* %7, align 8
  %141 = sub i64 256, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @os_memset(i32* %139, i32 0, i32 %142)
  br label %144

144:                                              ; preds = %136, %120
  store i64 0, i64* %11, align 8
  br label %145

145:                                              ; preds = %153, %144
  %146 = load i64, i64* %11, align 8
  %147 = icmp ult i64 %146, 256
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load i64, i64* %11, align 8
  %150 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %151, 54
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %148
  %154 = load i64, i64* %11, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %11, align 8
  br label %145

156:                                              ; preds = %145
  %157 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %158 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = call i32 @SHA1Init(i32* %159)
  %161 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %162 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %165 = call i32 @SHA1Update(i32* %163, i32* %164, i32 256)
  br label %169

166:                                              ; preds = %17
  %167 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %168 = call i32 @os_free(%struct.crypto_hash* %167)
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %171

169:                                              ; preds = %156, %89, %27, %22
  %170 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  store %struct.crypto_hash* %170, %struct.crypto_hash** %4, align 8
  br label %171

171:                                              ; preds = %169, %166, %16
  %172 = load %struct.crypto_hash*, %struct.crypto_hash** %4, align 8
  ret %struct.crypto_hash* %172
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @SHA1Update(i32*, i32*, i32) #1

declare dso_local i32 @SHA1Final(i32*, i32*) #1

declare dso_local i32 @os_free(%struct.crypto_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
