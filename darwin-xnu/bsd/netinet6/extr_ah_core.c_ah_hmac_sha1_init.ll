; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_sha1_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_sha1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ah_algorithm_state = type { %struct.secasvar*, i8* }
%struct.secasvar = type { i32 }

@SHA1_RESULTLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ah_hmac_sha1_init: what?\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ah_algorithm_state*, %struct.secasvar*)* @ah_hmac_sha1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_hmac_sha1_init(%struct.ah_algorithm_state* %0, %struct.secasvar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ah_algorithm_state*, align 8
  %5 = alloca %struct.secasvar*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ah_algorithm_state* %0, %struct.ah_algorithm_state** %4, align 8
  store %struct.secasvar* %1, %struct.secasvar** %5, align 8
  %15 = load i32, i32* @SHA1_RESULTLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 4
  store i64 %16, i64* %10, align 8
  %19 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %20 = icmp ne %struct.ah_algorithm_state* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %25 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %26 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %25, i32 0, i32 0
  store %struct.secasvar* %24, %struct.secasvar** %26, align 8
  %27 = load i32, i32* @M_TEMP, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call i64 @_MALLOC(i32 132, i32 %27, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %32 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %34 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @ENOBUFS, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %130

39:                                               ; preds = %23
  %40 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %41 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 64
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 64
  %48 = bitcast i32* %47 to i8*
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %8, align 8
  %50 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %51 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %50, i32 0, i32 0
  %52 = load %struct.secasvar*, %struct.secasvar** %51, align 8
  %53 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @_KEYLEN(i32 %54)
  %56 = icmp slt i32 64, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %39
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @SHA1Init(i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %62 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %61, i32 0, i32 0
  %63 = load %struct.secasvar*, %struct.secasvar** %62, align 8
  %64 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @_KEYBUF(i32 %65)
  %67 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %68 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %67, i32 0, i32 0
  %69 = load %struct.secasvar*, %struct.secasvar** %68, align 8
  %70 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @_KEYLEN(i32 %71)
  %73 = call i32 @SHA1Update(i32* %60, i32* %66, i32 %72)
  %74 = getelementptr inbounds i32, i32* %18, i64 0
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @SHA1Final(i32* %74, i32* %75)
  %77 = getelementptr inbounds i32, i32* %18, i64 0
  store i32* %77, i32** %11, align 8
  %78 = load i32, i32* @SHA1_RESULTLEN, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %12, align 8
  br label %94

80:                                               ; preds = %39
  %81 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %82 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %81, i32 0, i32 0
  %83 = load %struct.secasvar*, %struct.secasvar** %82, align 8
  %84 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32* @_KEYBUF(i32 %85)
  store i32* %86, i32** %11, align 8
  %87 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %88 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %87, i32 0, i32 0
  %89 = load %struct.secasvar*, %struct.secasvar** %88, align 8
  %90 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @_KEYLEN(i32 %91)
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %80, %57
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @bzero(i32* %95, i32 64)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @bzero(i32* %97, i32 64)
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @bcopy(i32* %99, i32* %100, i64 %101)
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @bcopy(i32* %103, i32* %104, i64 %105)
  store i64 0, i64* %13, align 8
  br label %107

107:                                              ; preds = %121, %94
  %108 = load i64, i64* %13, align 8
  %109 = icmp ult i64 %108, 64
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, 54
  store i32 %115, i32* %113, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, 92
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %110
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %107

124:                                              ; preds = %107
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @SHA1Init(i32* %125)
  %127 = load i32*, i32** %8, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @SHA1Update(i32* %127, i32* %128, i32 64)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %130

130:                                              ; preds = %124, %37
  %131 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @panic(i8*) #2

declare dso_local i64 @_MALLOC(i32, i32, i32) #2

declare dso_local i32 @_KEYLEN(i32) #2

declare dso_local i32 @SHA1Init(i32*) #2

declare dso_local i32 @SHA1Update(i32*, i32*, i32) #2

declare dso_local i32* @_KEYBUF(i32) #2

declare dso_local i32 @SHA1Final(i32*, i32*) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
