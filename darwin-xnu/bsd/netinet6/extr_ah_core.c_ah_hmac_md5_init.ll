; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_md5_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_md5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ah_algorithm_state = type { %struct.secasvar*, i8* }
%struct.secasvar = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ah_hmac_md5_init: what?\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ah_algorithm_state*, %struct.secasvar*)* @ah_hmac_md5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_hmac_md5_init(%struct.ah_algorithm_state* %0, %struct.secasvar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ah_algorithm_state*, align 8
  %5 = alloca %struct.secasvar*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [16 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.ah_algorithm_state* %0, %struct.ah_algorithm_state** %4, align 8
  store %struct.secasvar* %1, %struct.secasvar** %5, align 8
  %13 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %14 = icmp ne %struct.ah_algorithm_state* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %19 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %20 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %19, i32 0, i32 0
  store %struct.secasvar* %18, %struct.secasvar** %20, align 8
  %21 = load i32, i32* @M_TEMP, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call i64 @_MALLOC(i32 132, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %26 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %28 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %17
  %32 = load i32, i32* @ENOBUFS, align 4
  store i32 %32, i32* %3, align 4
  br label %122

33:                                               ; preds = %17
  %34 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %35 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 64
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 64
  %42 = bitcast i32* %41 to i8*
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %12, align 8
  %44 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %45 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %44, i32 0, i32 0
  %46 = load %struct.secasvar*, %struct.secasvar** %45, align 8
  %47 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @_KEYLEN(i32 %48)
  %50 = icmp slt i32 64, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %33
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @MD5Init(i32* %52)
  %54 = load i32*, i32** %12, align 8
  %55 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %56 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %55, i32 0, i32 0
  %57 = load %struct.secasvar*, %struct.secasvar** %56, align 8
  %58 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @_KEYBUF(i32 %59)
  %61 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %62 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %61, i32 0, i32 0
  %63 = load %struct.secasvar*, %struct.secasvar** %62, align 8
  %64 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @_KEYLEN(i32 %65)
  %67 = call i32 @MD5Update(i32* %54, i32* %60, i32 %66)
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @MD5Final(i32* %68, i32* %69)
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32* %71, i32** %9, align 8
  store i64 16, i64* %10, align 8
  br label %86

72:                                               ; preds = %33
  %73 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %74 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %73, i32 0, i32 0
  %75 = load %struct.secasvar*, %struct.secasvar** %74, align 8
  %76 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32* @_KEYBUF(i32 %77)
  store i32* %78, i32** %9, align 8
  %79 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %80 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %79, i32 0, i32 0
  %81 = load %struct.secasvar*, %struct.secasvar** %80, align 8
  %82 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @_KEYLEN(i32 %83)
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %72, %51
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @bzero(i32* %87, i32 64)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @bzero(i32* %89, i32 64)
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @bcopy(i32* %91, i32* %92, i64 %93)
  %95 = load i32*, i32** %9, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @bcopy(i32* %95, i32* %96, i64 %97)
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %113, %86
  %100 = load i64, i64* %11, align 8
  %101 = icmp ult i64 %100, 64
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load i32*, i32** %6, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %106, 54
  store i32 %107, i32* %105, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, 92
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %102
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %11, align 8
  br label %99

116:                                              ; preds = %99
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @MD5Init(i32* %117)
  %119 = load i32*, i32** %12, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @MD5Update(i32* %119, i32* %120, i32 64)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %116, %31
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @_KEYLEN(i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32* @_KEYBUF(i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
