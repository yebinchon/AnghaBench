; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_X509ToX.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_X509ToX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_28__ = type { i8*, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@NID_basic_constraints = common dso_local global i32 0, align 4
@NID_info_access = common dso_local global i32 0, align 4
@NID_ad_ca_issuers = common dso_local global i64 0, align 8
@GEN_URI = common dso_local global i64 0, align 8
@EVP_PKEY_RSA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @X509ToX(i32* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %217

19:                                               ; preds = %1
  %20 = call %struct.TYPE_25__* @ZeroMalloc(i32 48)
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 8
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = call i32 @LoadXNames(%struct.TYPE_25__* %24)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %27 = call i32 @LoadXDates(%struct.TYPE_25__* %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @CompareName(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %19
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = call %struct.TYPE_26__* @GetKFromX(%struct.TYPE_25__* %37)
  store %struct.TYPE_26__* %38, %struct.TYPE_26__** %10, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %40 = icmp ne %struct.TYPE_26__* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %44 = call i64 @CheckXandK(%struct.TYPE_25__* %42, %struct.TYPE_26__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %51 = call i32 @FreeK(%struct.TYPE_26__* %50)
  br label %52

52:                                               ; preds = %49, %36
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @NID_basic_constraints, align 4
  %56 = call i32 @X509_get_ext_by_NID(i32* %54, i32 %55, i32 -1)
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %128

66:                                               ; preds = %61
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @NID_info_access, align 4
  %69 = call i64 @X509_get_ext_d2i(i32* %67, i32 %68, i32* null, i32* null)
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %127

73:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %121, %73
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @sk_ACCESS_DESCRIPTION_num(i32* %76)
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %124

79:                                               ; preds = %74
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call %struct.TYPE_29__* @sk_ACCESS_DESCRIPTION_value(i32* %80, i32 %81)
  store %struct.TYPE_29__* %82, %struct.TYPE_29__** %13, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %84 = icmp ne %struct.TYPE_29__* %83, null
  br i1 %84, label %85, label %120

85:                                               ; preds = %79
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @OBJ_obj2nid(i32 %88)
  %90 = load i64, i64* @NID_ad_ca_issuers, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %85
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GEN_URI, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %92
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @ASN1_STRING_data(i32 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %14, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = call i32 @IsEmptyStr(i8* %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %100
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @StrCpy(i32 %115, i32 4, i8* %116)
  br label %124

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %92, %85
  br label %120

120:                                              ; preds = %119, %79
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %74

124:                                              ; preds = %112, %74
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @AUTHORITY_INFO_ACCESS_free(i32* %125)
  br label %127

127:                                              ; preds = %124, %66
  br label %128

128:                                              ; preds = %127, %61
  %129 = load i32*, i32** %3, align 8
  %130 = call %struct.TYPE_28__* @X509_get_serialNumber(i32* %129)
  store %struct.TYPE_28__* %130, %struct.TYPE_28__** %9, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @NewXSerial(i8* %133, i32 %136)
  %138 = bitcast i8* %137 to i32*
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 4
  store i32* %138, i32** %140, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %128
  store i8 0, i8* %15, align 1
  %146 = call i8* @NewXSerial(i8* %15, i32 1)
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 4
  store i32* %147, i32** %149, align 8
  br label %150

150:                                              ; preds = %145, %128
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %152 = call %struct.TYPE_26__* @GetKFromX(%struct.TYPE_25__* %151)
  store %struct.TYPE_26__* %152, %struct.TYPE_26__** %5, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %154 = icmp eq %struct.TYPE_26__* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %157 = call i32 @FreeX(%struct.TYPE_25__* %156)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %2, align 8
  br label %217

158:                                              ; preds = %150
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %160 = call %struct.TYPE_27__* @KToBuf(%struct.TYPE_26__* %159, i32 0, i32* null)
  store %struct.TYPE_27__* %160, %struct.TYPE_27__** %6, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %7, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @EVP_PKEY_base_id(i32 %166)
  store i64 %167, i64* %8, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %169 = call i32 @FreeBuf(%struct.TYPE_27__* %168)
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @EVP_PKEY_bits(i32 %172)
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %177 = call i32 @FreeK(%struct.TYPE_26__* %176)
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @EVP_PKEY_RSA, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %215

181:                                              ; preds = %158
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 3
  store i32 1, i32* %183, align 4
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 1024
  br i1 %187, label %188, label %211

188:                                              ; preds = %181
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 1536
  br i1 %192, label %193, label %211

193:                                              ; preds = %188
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 2048
  br i1 %197, label %198, label %211

198:                                              ; preds = %193
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 3072
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 4096
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 3
  store i32 0, i32* %210, align 4
  br label %214

211:                                              ; preds = %203, %198, %193, %188, %181
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 3
  store i32 1, i32* %213, align 4
  br label %214

214:                                              ; preds = %211, %208
  br label %215

215:                                              ; preds = %214, %158
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %216, %struct.TYPE_25__** %2, align 8
  br label %217

217:                                              ; preds = %215, %155, %18
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  ret %struct.TYPE_25__* %218
}

declare dso_local %struct.TYPE_25__* @ZeroMalloc(i32) #1

declare dso_local i32 @LoadXNames(%struct.TYPE_25__*) #1

declare dso_local i32 @LoadXDates(%struct.TYPE_25__*) #1

declare dso_local i64 @CompareName(i32, i32) #1

declare dso_local %struct.TYPE_26__* @GetKFromX(%struct.TYPE_25__*) #1

declare dso_local i64 @CheckXandK(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @FreeK(%struct.TYPE_26__*) #1

declare dso_local i32 @X509_get_ext_by_NID(i32*, i32, i32) #1

declare dso_local i64 @X509_get_ext_d2i(i32*, i32, i32*, i32*) #1

declare dso_local i32 @sk_ACCESS_DESCRIPTION_num(i32*) #1

declare dso_local %struct.TYPE_29__* @sk_ACCESS_DESCRIPTION_value(i32*, i32) #1

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i64 @ASN1_STRING_data(i32) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @AUTHORITY_INFO_ACCESS_free(i32*) #1

declare dso_local %struct.TYPE_28__* @X509_get_serialNumber(i32*) #1

declare dso_local i8* @NewXSerial(i8*, i32) #1

declare dso_local i32 @FreeX(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_27__* @KToBuf(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i64 @EVP_PKEY_base_id(i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_27__*) #1

declare dso_local i32 @EVP_PKEY_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
