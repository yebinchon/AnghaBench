; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_internal.c_crypto_hash_finish.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_internal.c_crypto_hash_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_finish(%struct.crypto_hash* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_hash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [64 x i32], align 16
  %9 = alloca i64, align 8
  store %struct.crypto_hash* %0, %struct.crypto_hash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %11 = icmp eq %struct.crypto_hash* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %196

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64*, i64** %7, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %13
  %20 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %21 = call i32 @os_free(%struct.crypto_hash* %20)
  store i32 0, i32* %4, align 4
  br label %196

22:                                               ; preds = %16
  %23 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %24 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %190 [
    i32 130, label %26
    i32 129, label %41
    i32 133, label %56
    i32 132, label %123
  ]

26:                                               ; preds = %22
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %28, 16
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64*, i64** %7, align 8
  store i64 16, i64* %31, align 8
  %32 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %33 = call i32 @os_free(%struct.crypto_hash* %32)
  store i32 -1, i32* %4, align 4
  br label %196

34:                                               ; preds = %26
  %35 = load i64*, i64** %7, align 8
  store i64 16, i64* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %38 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @MD5Final(i32* %36, i32* %39)
  br label %193

41:                                               ; preds = %22
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %43, 20
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64*, i64** %7, align 8
  store i64 20, i64* %46, align 8
  %47 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %48 = call i32 @os_free(%struct.crypto_hash* %47)
  store i32 -1, i32* %4, align 4
  br label %196

49:                                               ; preds = %41
  %50 = load i64*, i64** %7, align 8
  store i64 20, i64* %50, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %53 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @SHA1Final(i32* %51, i32* %54)
  br label %193

56:                                               ; preds = %22
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %58, 16
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64*, i64** %7, align 8
  store i64 16, i64* %61, align 8
  %62 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %63 = call i32 @os_free(%struct.crypto_hash* %62)
  store i32 -1, i32* %4, align 4
  br label %196

64:                                               ; preds = %56
  %65 = load i64*, i64** %7, align 8
  store i64 16, i64* %65, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %68 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = call i32 @MD5Final(i32* %66, i32* %69)
  %71 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %72 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %73 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %76 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @os_memcpy(i32* %71, i32 %74, i32 %77)
  %79 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %80 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %81 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %86 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 256, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @os_memset(i32* %84, i32 0, i32 %90)
  store i64 0, i64* %9, align 8
  br label %92

92:                                               ; preds = %100, %64
  %93 = load i64, i64* %9, align 8
  %94 = icmp ult i64 %93, 256
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, 92
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %9, align 8
  br label %92

103:                                              ; preds = %92
  %104 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %105 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = call i32 @MD5Init(i32* %106)
  %108 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %109 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %112 = call i32 @MD5Update(i32* %110, i32* %111, i32 256)
  %113 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %114 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @MD5Update(i32* %115, i32* %116, i32 16)
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %120 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = call i32 @MD5Final(i32* %118, i32* %121)
  br label %193

123:                                              ; preds = %22
  %124 = load i64*, i64** %7, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %125, 20
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i64*, i64** %7, align 8
  store i64 20, i64* %128, align 8
  %129 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %130 = call i32 @os_free(%struct.crypto_hash* %129)
  store i32 -1, i32* %4, align 4
  br label %196

131:                                              ; preds = %123
  %132 = load i64*, i64** %7, align 8
  store i64 20, i64* %132, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %135 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = call i32 @SHA1Final(i32* %133, i32* %136)
  %138 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %139 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %140 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %143 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @os_memcpy(i32* %138, i32 %141, i32 %144)
  %146 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %147 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %148 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %153 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = sub i64 256, %155
  %157 = trunc i64 %156 to i32
  %158 = call i32 @os_memset(i32* %151, i32 0, i32 %157)
  store i64 0, i64* %9, align 8
  br label %159

159:                                              ; preds = %167, %131
  %160 = load i64, i64* %9, align 8
  %161 = icmp ult i64 %160, 256
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %165, 92
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %162
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %159

170:                                              ; preds = %159
  %171 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %172 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = call i32 @SHA1Init(i32* %173)
  %175 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %176 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %179 = call i32 @SHA1Update(i32* %177, i32* %178, i32 256)
  %180 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %181 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @SHA1Update(i32* %182, i32* %183, i32 20)
  %185 = load i32*, i32** %6, align 8
  %186 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %187 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = call i32 @SHA1Final(i32* %185, i32* %188)
  br label %193

190:                                              ; preds = %22
  %191 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %192 = call i32 @os_free(%struct.crypto_hash* %191)
  store i32 -1, i32* %4, align 4
  br label %196

193:                                              ; preds = %170, %103, %49, %34
  %194 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %195 = call i32 @os_free(%struct.crypto_hash* %194)
  store i32 0, i32* %4, align 4
  br label %196

196:                                              ; preds = %193, %190, %127, %60, %45, %30, %19, %12
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @os_free(%struct.crypto_hash*) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @SHA1Final(i32*, i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @SHA1Update(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
