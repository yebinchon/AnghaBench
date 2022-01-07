; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@SSL_LIB_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"no ctx\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no enough memory > (ssl)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SSL_SESSION_new() return NULL\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"__ssl_cert_new() return NULL\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"__X509_new() return NULL\00", align 1
@new = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"SSL_METHOD_CALL(new) return %d\00", align 1
@SSL_NOTHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SSL_new(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %10 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %115

11:                                               ; preds = %1
  %12 = call i64 @ssl_mem_zalloc(i32 40)
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %18 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %114

19:                                               ; preds = %11
  %20 = call i32 (...) @SSL_SESSION_new()
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %29 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %111

30:                                               ; preds = %19
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__ssl_cert_new(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %43 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %106

44:                                               ; preds = %30
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__X509_new(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %57 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %101

58:                                               ; preds = %44
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @new, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = call i32 @SSL_METHOD_CALL(i32 %82, %struct.TYPE_8__* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %58
  %88 = load i32, i32* @SSL_LIB_ERROR_LEVEL, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %96

91:                                               ; preds = %58
  %92 = load i32, i32* @SSL_NOTHING, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %2, align 8
  br label %115

96:                                               ; preds = %87
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @X509_free(i32 %99)
  br label %101

101:                                              ; preds = %96, %55
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ssl_cert_free(i32 %104)
  br label %106

106:                                              ; preds = %101, %41
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @SSL_SESSION_free(i32 %109)
  br label %111

111:                                              ; preds = %106, %27
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = call i32 @ssl_mem_free(%struct.TYPE_8__* %112)
  br label %114

114:                                              ; preds = %111, %16
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %115

115:                                              ; preds = %114, %91, %8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %116
}

declare dso_local i32 @SSL_DEBUG(i32, i8*, ...) #1

declare dso_local i64 @ssl_mem_zalloc(i32) #1

declare dso_local i32 @SSL_SESSION_new(...) #1

declare dso_local i32 @__ssl_cert_new(i32) #1

declare dso_local i32 @__X509_new(i32) #1

declare dso_local i32 @SSL_METHOD_CALL(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @X509_free(i32) #1

declare dso_local i32 @ssl_cert_free(i32) #1

declare dso_local i32 @SSL_SESSION_free(i32) #1

declare dso_local i32 @ssl_mem_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
