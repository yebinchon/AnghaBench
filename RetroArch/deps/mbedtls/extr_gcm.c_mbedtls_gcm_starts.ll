; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_starts.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_starts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i64, i32, i32, i64 }

@MBEDTLS_ERR_GCM_BAD_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_starts(%struct.TYPE_4__* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [16 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %6
  %23 = load i64, i64* %11, align 8
  %24 = trunc i64 %23 to i32
  %25 = ashr i32 %24, 61
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %13, align 8
  %29 = trunc i64 %28 to i32
  %30 = ashr i32 %29, 61
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %22, %6
  %33 = load i32, i32* @MBEDTLS_ERR_GCM_BAD_INPUT, align 4
  store i32 %33, i32* %7, align 4
  br label %216

34:                                               ; preds = %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @memset(i8* %37, i32 0, i32 8)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @memset(i8* %41, i32 0, i32 8)
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %50, 12
  br i1 %51, label %52, label %63

52:                                               ; preds = %34
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 15
  store i8 1, i8* %62, align 1
  br label %149

63:                                               ; preds = %34
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %65 = call i32 @memset(i8* %64, i32 0, i32 16)
  %66 = load i64, i64* %11, align 8
  %67 = mul i64 %66, 8
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %69 = call i32 @PUT_UINT32_BE(i64 %67, i8* %68, i32 12)
  %70 = load i8*, i8** %10, align 8
  store i8* %70, i8** %17, align 8
  br label %71

71:                                               ; preds = %104, %63
  %72 = load i64, i64* %11, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %119

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = icmp ult i64 %75, 16
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i64, i64* %11, align 8
  br label %80

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i64 [ %78, %77 ], [ 16, %79 ]
  store i64 %81, i64* %18, align 8
  store i64 0, i64* %16, align 8
  br label %82

82:                                               ; preds = %101, %80
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %18, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i8*, i8** %17, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %16, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = xor i32 %98, %91
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %96, align 1
  br label %101

101:                                              ; preds = %86
  %102 = load i64, i64* %16, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %16, align 8
  br label %82

104:                                              ; preds = %82
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @gcm_mult(%struct.TYPE_4__* %105, i8* %108, i8* %111)
  %113 = load i64, i64* %18, align 8
  %114 = load i64, i64* %11, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %118, i8** %17, align 8
  br label %71

119:                                              ; preds = %71
  store i64 0, i64* %16, align 8
  br label %120

120:                                              ; preds = %137, %119
  %121 = load i64, i64* %16, align 8
  %122 = icmp ult i64 %121, 16
  br i1 %122, label %123, label %140

123:                                              ; preds = %120
  %124 = load i64, i64* %16, align 8
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = xor i32 %134, %127
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %132, align 1
  br label %137

137:                                              ; preds = %123
  %138 = load i64, i64* %16, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %16, align 8
  br label %120

140:                                              ; preds = %120
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @gcm_mult(%struct.TYPE_4__* %141, i8* %144, i8* %147)
  br label %149

149:                                              ; preds = %140, %52
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @mbedtls_cipher_update(i32* %151, i8* %154, i32 16, i32 %157, i64* %19)
  store i32 %158, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %7, align 4
  br label %216

162:                                              ; preds = %149
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  %166 = load i8*, i8** %12, align 8
  store i8* %166, i8** %17, align 8
  br label %167

167:                                              ; preds = %200, %162
  %168 = load i64, i64* %13, align 8
  %169 = icmp ugt i64 %168, 0
  br i1 %169, label %170, label %215

170:                                              ; preds = %167
  %171 = load i64, i64* %13, align 8
  %172 = icmp ult i64 %171, 16
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i64, i64* %13, align 8
  br label %176

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %175, %173
  %177 = phi i64 [ %174, %173 ], [ 16, %175 ]
  store i64 %177, i64* %18, align 8
  store i64 0, i64* %16, align 8
  br label %178

178:                                              ; preds = %197, %176
  %179 = load i64, i64* %16, align 8
  %180 = load i64, i64* %18, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %178
  %183 = load i8*, i8** %17, align 8
  %184 = load i64, i64* %16, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i64, i64* %16, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = xor i32 %194, %187
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %192, align 1
  br label %197

197:                                              ; preds = %182
  %198 = load i64, i64* %16, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %16, align 8
  br label %178

200:                                              ; preds = %178
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @gcm_mult(%struct.TYPE_4__* %201, i8* %204, i8* %207)
  %209 = load i64, i64* %18, align 8
  %210 = load i64, i64* %13, align 8
  %211 = sub i64 %210, %209
  store i64 %211, i64* %13, align 8
  %212 = load i64, i64* %18, align 8
  %213 = load i8*, i8** %17, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 %212
  store i8* %214, i8** %17, align 8
  br label %167

215:                                              ; preds = %167
  store i32 0, i32* %7, align 4
  br label %216

216:                                              ; preds = %215, %160, %32
  %217 = load i32, i32* %7, align 4
  ret i32 %217
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @PUT_UINT32_BE(i64, i8*, i32) #1

declare dso_local i32 @gcm_mult(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @mbedtls_cipher_update(i32*, i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
