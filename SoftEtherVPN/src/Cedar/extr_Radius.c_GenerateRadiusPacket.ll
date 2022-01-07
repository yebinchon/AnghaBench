; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_GenerateRadiusPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_GenerateRadiusPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i64*, i64, i64, i32 }
%struct.TYPE_15__ = type { i64, i32, i64*, i64, i32 }

@RADIUS_ATTRIBUTE_EAP_MESSAGE = common dso_local global i64 0, align 8
@RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR = common dso_local global i64 0, align 8
@RADIUS_ATTRIBUTE_VENDOR_SPECIFIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @GenerateRadiusPacket(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca [16 x i64], align 16
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca [16 x i64], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = icmp eq %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %240

21:                                               ; preds = %2
  %22 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 0
  %23 = call i32 @Zero(i64* %22, i32 128)
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %52, %21
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @LIST_NUM(i32 %28)
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %24
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @LIST_DATA(i32 %34, i64 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %13, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RADIUS_ATTRIBUTE_EAP_MESSAGE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %31
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %24

55:                                               ; preds = %24
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i64, i64* @RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR, align 8
  %63 = getelementptr inbounds [16 x i64], [16 x i64]* %8, i64 0, i64 0
  %64 = call %struct.TYPE_15__* @NewRadiusAvp(i64 %62, i32 0, i32 0, i64* %63, i32 128)
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %14, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %69 = call i32 @Add(i32 %67, %struct.TYPE_15__* %68)
  br label %70

70:                                               ; preds = %61, %58, %55
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = call i64 @IsZero(i64* %73, i32 16)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %78 = call i32 @Rand(i64* %77, i32 128)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds [16 x i64], [16 x i64]* %15, i64 0, i64 0
  %83 = call i32 @Copy(i64* %81, i64* %82, i32 16)
  br label %84

84:                                               ; preds = %76, %70
  %85 = call %struct.TYPE_16__* (...) @NewBuf()
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %6, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @WriteBufChar(%struct.TYPE_16__* %86, i64 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @WriteBufChar(%struct.TYPE_16__* %91, i64 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %9, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = call i32 @WriteBufShort(%struct.TYPE_16__* %99, i32 0)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = call i32 @WriteBuf(%struct.TYPE_16__* %101, i64* %104, i32 16)
  store i64 0, i64* %7, align 8
  br label %106

106:                                              ; preds = %200, %84
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @LIST_NUM(i32 %110)
  %112 = icmp slt i64 %107, %111
  br i1 %112, label %113, label %203

113:                                              ; preds = %106
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @LIST_DATA(i32 %116, i64 %117)
  %119 = inttoptr i64 %118 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %119, %struct.TYPE_15__** %16, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @WriteBufChar(%struct.TYPE_16__* %120, i64 %123)
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %166

130:                                              ; preds = %113
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, 2
  %137 = call i32 @WriteBufChar(%struct.TYPE_16__* %131, i64 %136)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %130
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %10, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 16
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = call i32 @Zero(i64* %154, i32 8)
  br label %156

156:                                              ; preds = %151, %143
  br label %157

157:                                              ; preds = %156, %130
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @WriteBuf(%struct.TYPE_16__* %158, i64* %161, i32 %164)
  br label %199

166:                                              ; preds = %113
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, 8
  %173 = call i32 @WriteBufChar(%struct.TYPE_16__* %167, i64 %172)
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @WriteBufInt(%struct.TYPE_16__* %174, i32 %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @WriteBufChar(%struct.TYPE_16__* %179, i64 %182)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, 2
  %190 = call i32 @WriteBufChar(%struct.TYPE_16__* %184, i64 %189)
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @WriteBuf(%struct.TYPE_16__* %191, i64* %194, i32 %197)
  br label %199

199:                                              ; preds = %166, %157
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %7, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %7, align 8
  br label %106

203:                                              ; preds = %106
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i64*
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @WRITE_USHORT(i64* %209, i32 %212)
  %214 = load i64, i64* %10, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %203
  %217 = getelementptr inbounds [16 x i64], [16 x i64]* %17, i64 0, i64 0
  %218 = load i8*, i8** %5, align 8
  %219 = load i8*, i8** %5, align 8
  %220 = call i32 @StrLen(i8* %219)
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @HMacMd5(i64* %217, i8* %218, i32 %220, i64 %223, i32 %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = inttoptr i64 %230 to i64*
  %232 = load i64, i64* %10, align 8
  %233 = getelementptr inbounds i64, i64* %231, i64 %232
  %234 = getelementptr inbounds [16 x i64], [16 x i64]* %17, i64 0, i64 0
  %235 = call i32 @Copy(i64* %233, i64* %234, i32 16)
  br label %236

236:                                              ; preds = %216, %203
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %238 = call i32 @SeekBufToBegin(%struct.TYPE_16__* %237)
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %239, %struct.TYPE_16__** %3, align 8
  br label %240

240:                                              ; preds = %236, %20
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %241
}

declare dso_local i32 @Zero(i64*, i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i64 @LIST_DATA(i32, i64) #1

declare dso_local %struct.TYPE_15__* @NewRadiusAvp(i64, i32, i32, i64*, i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @IsZero(i64*, i32) #1

declare dso_local i32 @Rand(i64*, i32) #1

declare dso_local i32 @Copy(i64*, i64*, i32) #1

declare dso_local %struct.TYPE_16__* @NewBuf(...) #1

declare dso_local i32 @WriteBufChar(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @WriteBufShort(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_16__*, i64*, i32) #1

declare dso_local i32 @WriteBufInt(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @WRITE_USHORT(i64*, i32) #1

declare dso_local i32 @HMacMd5(i64*, i8*, i32, i64, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @SeekBufToBegin(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
