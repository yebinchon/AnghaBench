; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_keyed_sha1_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_keyed_sha1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ah_algorithm_state = type { %struct.secasvar*, i8* }
%struct.secasvar = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ah_keyed_sha1_init: what?\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ah_algorithm_state*, %struct.secasvar*)* @ah_keyed_sha1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_keyed_sha1_init(%struct.ah_algorithm_state* %0, %struct.secasvar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ah_algorithm_state*, align 8
  %5 = alloca %struct.secasvar*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x i32], align 4
  store %struct.ah_algorithm_state* %0, %struct.ah_algorithm_state** %4, align 8
  store %struct.secasvar* %1, %struct.secasvar** %5, align 8
  %10 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %11 = icmp ne %struct.ah_algorithm_state* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %16 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %17 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %16, i32 0, i32 0
  store %struct.secasvar* %15, %struct.secasvar** %17, align 8
  %18 = load i32, i32* @M_TEMP, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call i64 @_MALLOC(i32 4, i32 %18, i32 %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %23 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %25 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %14
  %29 = load i32, i32* @ENOBUFS, align 4
  store i32 %29, i32* %3, align 4
  br label %143

30:                                               ; preds = %14
  %31 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %32 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @SHA1Init(i32* %35)
  %37 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %38 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %37, i32 0, i32 0
  %39 = load %struct.secasvar*, %struct.secasvar** %38, align 8
  %40 = icmp ne %struct.secasvar* %39, null
  br i1 %40, label %41, label %142

41:                                               ; preds = %30
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %44 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %43, i32 0, i32 0
  %45 = load %struct.secasvar*, %struct.secasvar** %44, align 8
  %46 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @_KEYBUF(i32 %47)
  %49 = inttoptr i64 %48 to i32*
  %50 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %51 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %50, i32 0, i32 0
  %52 = load %struct.secasvar*, %struct.secasvar** %51, align 8
  %53 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @_KEYLEN(i32 %54)
  %56 = call i32 @SHA1Update(i32* %42, i32* %49, i32 %55)
  %57 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %58 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %57, i32 0, i32 0
  %59 = load %struct.secasvar*, %struct.secasvar** %58, align 8
  %60 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @_KEYLEN(i32 %61)
  %63 = icmp slt i32 %62, 56
  br i1 %63, label %64, label %73

64:                                               ; preds = %41
  %65 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %66 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %65, i32 0, i32 0
  %67 = load %struct.secasvar*, %struct.secasvar** %66, align 8
  %68 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @_KEYLEN(i32 %69)
  %71 = sub nsw i32 56, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %7, align 8
  br label %82

73:                                               ; preds = %41
  %74 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %75 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %74, i32 0, i32 0
  %76 = load %struct.secasvar*, %struct.secasvar** %75, align 8
  %77 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @_KEYLEN(i32 %78)
  %80 = sub nsw i32 120, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %73, %64
  %83 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %84 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %83, i32 0, i32 0
  %85 = load %struct.secasvar*, %struct.secasvar** %84, align 8
  %86 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @_KEYLEN(i32 %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = mul i64 %90, 8
  store i64 %91, i64* %8, align 8
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  store i32 128, i32* %92, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %95 = call i32 @SHA1Update(i32* %93, i32* %94, i32 1)
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %7, align 8
  %98 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %99 = call i32 @bzero(i32* %98, i32 128)
  br label %100

100:                                              ; preds = %103, %82
  %101 = load i64, i64* %7, align 8
  %102 = icmp ult i64 128, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %106 = call i32 @SHA1Update(i32* %104, i32* %105, i32 128)
  %107 = load i64, i64* %7, align 8
  %108 = sub i64 %107, 128
  store i64 %108, i64* %7, align 8
  br label %100

109:                                              ; preds = %100
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %115 = load i64, i64* %7, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @SHA1Update(i32* %113, i32* %114, i32 %116)
  br label %118

118:                                              ; preds = %112, %109
  %119 = load i64, i64* %8, align 8
  %120 = lshr i64 %119, 0
  %121 = and i64 %120, 255
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  store i32 %122, i32* %123, align 4
  %124 = load i64, i64* %8, align 8
  %125 = lshr i64 %124, 8
  %126 = and i64 %125, 255
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 1
  store i32 %127, i32* %128, align 4
  %129 = load i64, i64* %8, align 8
  %130 = lshr i64 %129, 16
  %131 = and i64 %130, 255
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 2
  store i32 %132, i32* %133, align 4
  %134 = load i64, i64* %8, align 8
  %135 = lshr i64 %134, 24
  %136 = and i64 %135, 255
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 3
  store i32 %137, i32* %138, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %141 = call i32 @SHA1Update(i32* %139, i32* %140, i32 8)
  br label %142

142:                                              ; preds = %118, %30
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %28
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @SHA1Update(i32*, i32*, i32) #1

declare dso_local i64 @_KEYBUF(i32) #1

declare dso_local i32 @_KEYLEN(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
