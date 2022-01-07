; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ticket.c_mbedtls_ssl_ticket_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ticket.c_mbedtls_ssl_ticket_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8*, i32)*, i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_THREADING_MUTEX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ticket_write(i8* %0, i32* %1, i8* %2, i8* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %15, align 8
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %17, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  store i8* %28, i8** %18, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 12
  store i8* %30, i8** %19, align 8
  %31 = load i8*, i8** %19, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %32, i8** %20, align 8
  %33 = load i64*, i64** %12, align 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %35 = icmp eq %struct.TYPE_5__* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %6
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %38, align 8
  %40 = icmp eq i32 (i32, i8*, i32)* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %6
  %42 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %42, i32* %7, align 4
  br label %137

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp slt i64 %48, 34
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL, align 4
  store i32 %51, i32* %7, align 4
  br label %137

52:                                               ; preds = %43
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %54 = call i32 @ssl_ticket_update_keys(%struct.TYPE_5__* %53)
  store i32 %54, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %135

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %63
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %16, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i8*, i8** %17, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i8* %69, i32 %72, i32 4)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %18, align 8
  %81 = call i32 %76(i32 %79, i8* %80, i32 12)
  store i32 %81, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %57
  br label %135

84:                                               ; preds = %57
  %85 = load i32*, i32** %9, align 8
  %86 = load i8*, i8** %20, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %20, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @ssl_save_session(i32* %85, i8* %86, i32 %92, i64* %22)
  store i32 %93, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %84
  %96 = load i64, i64* %22, align 8
  %97 = icmp ugt i64 %96, 65535
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %84
  br label %135

99:                                               ; preds = %95
  %100 = load i64, i64* %22, align 8
  %101 = lshr i64 %100, 8
  %102 = and i64 %101, 255
  %103 = trunc i64 %102 to i8
  %104 = load i8*, i8** %19, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 %103, i8* %105, align 1
  %106 = load i64, i64* %22, align 8
  %107 = and i64 %106, 255
  %108 = trunc i64 %107 to i8
  %109 = load i8*, i8** %19, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %108, i8* %110, align 1
  %111 = load i8*, i8** %20, align 8
  %112 = load i64, i64* %22, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %21, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %18, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load i64, i64* %22, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = call i32 @mbedtls_cipher_auth_encrypt(i32* %115, i8* %116, i32 12, i8* %117, i32 18, i8* %118, i64 %119, i8* %120, i64* %23, i8* %121, i32 16)
  store i32 %122, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %99
  br label %135

125:                                              ; preds = %99
  %126 = load i64, i64* %23, align 8
  %127 = load i64, i64* %22, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %130, i32* %14, align 4
  br label %135

131:                                              ; preds = %125
  %132 = load i64, i64* %23, align 8
  %133 = add i64 34, %132
  %134 = load i64*, i64** %12, align 8
  store i64 %133, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %129, %124, %98, %83, %56
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %135, %50, %41
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @ssl_ticket_update_keys(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ssl_save_session(i32*, i8*, i32, i64*) #1

declare dso_local i32 @mbedtls_cipher_auth_encrypt(i32*, i8*, i32, i8*, i32, i8*, i64, i8*, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
