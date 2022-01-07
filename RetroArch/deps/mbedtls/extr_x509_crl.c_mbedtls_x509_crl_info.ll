; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_mbedtls_x509_crl_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_mbedtls_x509_crl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%sCRL version   : %d\00", align 1
@MBEDTLS_X509_SAFE_SNPRINTF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\0A%sissuer name   : \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\0A%sthis update   : %04d-%02d-%02d %02d:%02d:%02d\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\0A%snext update   : %04d-%02d-%02d %02d:%02d:%02d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\0A%sRevoked certificates:\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\0A%sserial number: \00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c" revocation date: %04d-%02d-%02d %02d:%02d:%02d\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0A%ssigned using  : \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crl_info(i8* %0, i64 %1, i8* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %15, i64 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 7
  %32 = call i32 @mbedtls_x509_dn_gets(i8* %28, i64 %29, i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %40, i32 %44, i32 %48, i32 %52, i32 %56, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %63, i64 %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %65, i32 %69, i32 %73, i32 %77, i32 %81, i32 %85, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 4
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %12, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %94, i64 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  br label %99

99:                                               ; preds = %110, %4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %101 = icmp ne %struct.TYPE_12__* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi i1 [ false, %99 ], [ %107, %102 ]
  br i1 %109, label %110, label %153

110:                                              ; preds = %108
  %111 = load i8*, i8** %11, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %111, i64 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = call i32 @mbedtls_x509_serial_gets(i8* %116, i64 %117, i32* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %122, i64 %123, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %131, i32 %135, i32 %139, i32 %143, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  store %struct.TYPE_12__* %152, %struct.TYPE_12__** %12, align 8
  br label %99

153:                                              ; preds = %108
  %154 = load i8*, i8** %11, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %154, i64 %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %159 = load i8*, i8** %11, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @mbedtls_x509_sig_alg_gets(i8* %159, i64 %160, i32* %162, i32 %165, i32 %168, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %174 = load i8*, i8** %11, align 8
  %175 = load i64, i64* %10, align 8
  %176 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %174, i64 %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* %10, align 8
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  ret i32 %181
}

declare dso_local i32 @mbedtls_snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @mbedtls_x509_dn_gets(i8*, i64, i32*) #1

declare dso_local i32 @mbedtls_x509_serial_gets(i8*, i64, i32*) #1

declare dso_local i32 @mbedtls_x509_sig_alg_gets(i8*, i64, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
