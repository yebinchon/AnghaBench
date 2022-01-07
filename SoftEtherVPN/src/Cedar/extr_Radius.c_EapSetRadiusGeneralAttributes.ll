; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_EapSetRadiusGeneralAttributes.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_EapSetRadiusGeneralAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }

@RADIUS_ATTRIBUTE_SERVICE_TYPE = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_FRAMED_PROTOCOL = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_NAS_PORT_TYPE = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_CALLED_STATION_ID = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_CALLING_STATION_ID = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_TUNNEL_CLIENT_ENDPOINT = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_USER_NAME = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_NAS_ID = common dso_local global i32 0, align 4
@CEDAR_SERVER_STR = common dso_local global i8* null, align 8
@RADIUS_ATTRIBUTE_PROXY_STATE = common dso_local global i32 0, align 4
@RADIUS_ATTRIBUTE_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@RADIUS_VENDOR_MICROSOFT = common dso_local global i32 0, align 4
@RADIUS_MS_NETWORK_ACCESS_SERVER_TYPE = common dso_local global i32 0, align 4
@RADIUS_MS_RAS_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MSRASV5.20\00", align 1
@RADIUS_MS_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"{5DC53D72-9815-4E97-AC91-339BAFEA6C48}\00", align 1
@RADIUS_MS_RAS_CORRELATION = common dso_local global i32 0, align 4
@RADIUS_MS_RAS_CLIENT_VERSION = common dso_local global i32 0, align 4
@RADIUS_MS_RAS_CLIENT_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EapSetRadiusGeneralAttributes(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %186

13:                                               ; preds = %9
  %14 = call signext i8 @Endian32(i32 2)
  store i8 %14, i8* %5, align 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RADIUS_ATTRIBUTE_SERVICE_TYPE, align 4
  %19 = call i32 @NewRadiusAvp(i32 %18, i32 0, i32 0, i8* %5, i32 1)
  %20 = call i32 @Add(i32 %17, i32 %19)
  %21 = call signext i8 @Endian32(i32 1)
  store i8 %21, i8* %5, align 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RADIUS_ATTRIBUTE_FRAMED_PROTOCOL, align 4
  %26 = call i32 @NewRadiusAvp(i32 %25, i32 0, i32 0, i8* %5, i32 1)
  %27 = call i32 @Add(i32 %24, i32 %26)
  %28 = call signext i8 @Endian32(i32 5)
  store i8 %28, i8* %5, align 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RADIUS_ATTRIBUTE_NAS_PORT_TYPE, align 4
  %33 = call i32 @NewRadiusAvp(i32 %32, i32 0, i32 0, i8* %5, i32 1)
  %34 = call i32 @Add(i32 %31, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @IsEmptyStr(i8* %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %13
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RADIUS_ATTRIBUTE_CALLED_STATION_ID, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @StrLen(i8* %50)
  %52 = call i32 @NewRadiusAvp(i32 %44, i32 0, i32 0, i8* %47, i32 %51)
  %53 = call i32 @Add(i32 %43, i32 %52)
  br label %54

54:                                               ; preds = %40, %13
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RADIUS_ATTRIBUTE_CALLING_STATION_ID, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @StrLen(i8* %64)
  %66 = call i32 @NewRadiusAvp(i32 %58, i32 0, i32 0, i8* %61, i32 %65)
  %67 = call i32 @Add(i32 %57, i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RADIUS_ATTRIBUTE_TUNNEL_CLIENT_ENDPOINT, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @StrLen(i8* %77)
  %79 = call i32 @NewRadiusAvp(i32 %71, i32 0, i32 0, i8* %74, i32 %78)
  %80 = call i32 @Add(i32 %70, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RADIUS_ATTRIBUTE_USER_NAME, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @StrLen(i8* %90)
  %92 = call i32 @NewRadiusAvp(i32 %84, i32 0, i32 0, i8* %87, i32 %91)
  %93 = call i32 @Add(i32 %83, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RADIUS_ATTRIBUTE_NAS_ID, align 4
  %98 = load i8*, i8** @CEDAR_SERVER_STR, align 8
  %99 = load i8*, i8** @CEDAR_SERVER_STR, align 8
  %100 = call i32 @StrLen(i8* %99)
  %101 = call i32 @NewRadiusAvp(i32 %97, i32 0, i32 0, i8* %98, i32 %100)
  %102 = call i32 @Add(i32 %96, i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @IsEmptyStr(i8* %105)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %54
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RADIUS_ATTRIBUTE_PROXY_STATE, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @StrLen(i8* %118)
  %120 = call i32 @NewRadiusAvp(i32 %112, i32 0, i32 0, i8* %115, i32 %119)
  %121 = call i32 @Add(i32 %111, i32 %120)
  br label %122

122:                                              ; preds = %108, %54
  %123 = call signext i8 @Endian32(i32 2)
  store i8 %123, i8* %5, align 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, align 4
  %128 = load i32, i32* @RADIUS_VENDOR_MICROSOFT, align 4
  %129 = load i32, i32* @RADIUS_MS_NETWORK_ACCESS_SERVER_TYPE, align 4
  %130 = call i32 @NewRadiusAvp(i32 %127, i32 %128, i32 %129, i8* %5, i32 1)
  %131 = call i32 @Add(i32 %126, i32 %130)
  %132 = load i32, i32* @RADIUS_VENDOR_MICROSOFT, align 4
  %133 = call signext i8 @Endian32(i32 %132)
  store i8 %133, i8* %5, align 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, align 4
  %138 = load i32, i32* @RADIUS_VENDOR_MICROSOFT, align 4
  %139 = load i32, i32* @RADIUS_MS_RAS_VENDOR, align 4
  %140 = call i32 @NewRadiusAvp(i32 %137, i32 %138, i32 %139, i8* %5, i32 1)
  %141 = call i32 @Add(i32 %136, i32 %140)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, align 4
  %146 = load i32, i32* @RADIUS_VENDOR_MICROSOFT, align 4
  %147 = load i32, i32* @RADIUS_MS_VERSION, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @StrLen(i8* %149)
  %151 = call i32 @NewRadiusAvp(i32 %145, i32 %146, i32 %147, i8* %148, i32 %150)
  %152 = call i32 @Add(i32 %144, i32 %151)
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, align 4
  %157 = load i32, i32* @RADIUS_VENDOR_MICROSOFT, align 4
  %158 = load i32, i32* @RADIUS_MS_RAS_CORRELATION, align 4
  %159 = load i8*, i8** %6, align 8
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @StrLen(i8* %160)
  %162 = call i32 @NewRadiusAvp(i32 %156, i32 %157, i32 %158, i8* %159, i32 %161)
  %163 = call i32 @Add(i32 %155, i32 %162)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, align 4
  %168 = load i32, i32* @RADIUS_VENDOR_MICROSOFT, align 4
  %169 = load i32, i32* @RADIUS_MS_RAS_CLIENT_VERSION, align 4
  %170 = load i8*, i8** %6, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 @StrLen(i8* %171)
  %173 = call i32 @NewRadiusAvp(i32 %167, i32 %168, i32 %169, i8* %170, i32 %172)
  %174 = call i32 @Add(i32 %166, i32 %173)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @RADIUS_ATTRIBUTE_VENDOR_SPECIFIC, align 4
  %179 = load i32, i32* @RADIUS_VENDOR_MICROSOFT, align 4
  %180 = load i32, i32* @RADIUS_MS_RAS_CLIENT_NAME, align 4
  %181 = load i8*, i8** %6, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @StrLen(i8* %182)
  %184 = call i32 @NewRadiusAvp(i32 %178, i32 %179, i32 %180, i8* %181, i32 %183)
  %185 = call i32 @Add(i32 %177, i32 %184)
  br label %186

186:                                              ; preds = %122, %12
  ret void
}

declare dso_local signext i8 @Endian32(i32) #1

declare dso_local i32 @Add(i32, i32) #1

declare dso_local i32 @NewRadiusAvp(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StrLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
