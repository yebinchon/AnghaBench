; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_dn_gets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_dn_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_7__ = type { i32 }

@MBEDTLS_X509_MAX_DN_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@MBEDTLS_X509_SAFE_SNPRINTF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"??=\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_dn_gets(i8* %0, i64 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i8 0, i8* %11, align 1
  store i8* null, i8** %13, align 8
  %17 = load i32, i32* @MBEDTLS_X509_MAX_DN_NAME_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = trunc i64 %18 to i32
  %22 = call i32 @memset(i8* %20, i32 0, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %12, align 8
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %16, align 8
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %116, %35, %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %129

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %12, align 8
  br label %26

39:                                               ; preds = %29
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = icmp ne %struct.TYPE_6__* %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i8*, i8** %16, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i8, i8* %11, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %51 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %44, i64 %45, i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  br label %53

53:                                               ; preds = %43, %39
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = call i32 @mbedtls_oid_get_attr_short_name(%struct.TYPE_7__* %55, i8** %13)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i8*, i8** %16, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %60, i64 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %7, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load i8*, i8** %16, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %65, i64 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %113, %68
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %71, %75
  br i1 %76, label %77, label %116

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %18, 1
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %116

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  store i8 %89, i8* %10, align 1
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp slt i32 %91, 32
  br i1 %92, label %105, label %93

93:                                               ; preds = %82
  %94 = load i8, i8* %10, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 127
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i8, i8* %10, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp sgt i32 %99, 128
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp slt i32 %103, 160
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %93, %82
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i8, i8* %20, i64 %106
  store i8 63, i8* %107, align 1
  br label %112

108:                                              ; preds = %101, %97
  %109 = load i8, i8* %10, align 1
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds i8, i8* %20, i64 %110
  store i8 %109, i8* %111, align 1
  br label %112

112:                                              ; preds = %108, %105
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %8, align 8
  br label %70

116:                                              ; preds = %81, %70
  %117 = load i64, i64* %8, align 8
  %118 = getelementptr inbounds i8, i8* %20, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %16, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 (i8*, i64, i8*, ...) @mbedtls_snprintf(i8* %119, i64 %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 8
  store i8 %125, i8* %11, align 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  store %struct.TYPE_6__* %128, %struct.TYPE_6__** %12, align 8
  br label %26

129:                                              ; preds = %26
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %9, align 8
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %134)
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mbedtls_snprintf(i8*, i64, i8*, ...) #2

declare dso_local i32 @mbedtls_oid_get_attr_short_name(%struct.TYPE_7__*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
