; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_keyed_md5_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_keyed_md5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ah_algorithm_state = type { i32*, %struct.secasvar* }
%struct.secasvar = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ah_keyed_md5_init: what?\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ah_algorithm_state*, %struct.secasvar*)* @ah_keyed_md5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_keyed_md5_init(%struct.ah_algorithm_state* %0, %struct.secasvar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ah_algorithm_state*, align 8
  %5 = alloca %struct.secasvar*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x i32], align 4
  store %struct.ah_algorithm_state* %0, %struct.ah_algorithm_state** %4, align 8
  store %struct.secasvar* %1, %struct.secasvar** %5, align 8
  %9 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %10 = icmp ne %struct.ah_algorithm_state* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %15 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %16 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %15, i32 0, i32 1
  store %struct.secasvar* %14, %struct.secasvar** %16, align 8
  %17 = load i32, i32* @M_TEMP, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = call i64 @_MALLOC(i32 4, i32 %17, i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %23 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %25 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @ENOBUFS, align 4
  store i32 %29, i32* %3, align 4
  br label %151

30:                                               ; preds = %13
  %31 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %32 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @MD5Init(i32* %33)
  %35 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %36 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %35, i32 0, i32 1
  %37 = load %struct.secasvar*, %struct.secasvar** %36, align 8
  %38 = icmp ne %struct.secasvar* %37, null
  br i1 %38, label %39, label %150

39:                                               ; preds = %30
  %40 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %41 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %44 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %43, i32 0, i32 1
  %45 = load %struct.secasvar*, %struct.secasvar** %44, align 8
  %46 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @_KEYBUF(i32 %47)
  %49 = inttoptr i64 %48 to i32*
  %50 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %51 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %50, i32 0, i32 1
  %52 = load %struct.secasvar*, %struct.secasvar** %51, align 8
  %53 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @_KEYLEN(i32 %54)
  %56 = call i32 @MD5Update(i32* %42, i32* %49, i32 %55)
  %57 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %58 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %57, i32 0, i32 1
  %59 = load %struct.secasvar*, %struct.secasvar** %58, align 8
  %60 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @_KEYLEN(i32 %61)
  %63 = icmp slt i32 %62, 56
  br i1 %63, label %64, label %73

64:                                               ; preds = %39
  %65 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %66 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %65, i32 0, i32 1
  %67 = load %struct.secasvar*, %struct.secasvar** %66, align 8
  %68 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @_KEYLEN(i32 %69)
  %71 = sub nsw i32 56, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %6, align 8
  br label %82

73:                                               ; preds = %39
  %74 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %75 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %74, i32 0, i32 1
  %76 = load %struct.secasvar*, %struct.secasvar** %75, align 8
  %77 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @_KEYLEN(i32 %78)
  %80 = sub nsw i32 120, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %73, %64
  %83 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %84 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %83, i32 0, i32 1
  %85 = load %struct.secasvar*, %struct.secasvar** %84, align 8
  %86 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @_KEYLEN(i32 %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = mul i64 %90, 8
  store i64 %91, i64* %7, align 8
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  store i32 128, i32* %92, align 4
  %93 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %94 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %97 = call i32 @MD5Update(i32* %95, i32* %96, i32 1)
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, -1
  store i64 %99, i64* %6, align 8
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %101 = call i32 @bzero(i32* %100, i32 128)
  br label %102

102:                                              ; preds = %105, %82
  %103 = load i64, i64* %6, align 8
  %104 = icmp ult i64 128, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %107 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %110 = call i32 @MD5Update(i32* %108, i32* %109, i32 128)
  %111 = load i64, i64* %6, align 8
  %112 = sub i64 %111, 128
  store i64 %112, i64* %6, align 8
  br label %102

113:                                              ; preds = %102
  %114 = load i64, i64* %6, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %118 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %121 = load i64, i64* %6, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @MD5Update(i32* %119, i32* %120, i32 %122)
  br label %124

124:                                              ; preds = %116, %113
  %125 = load i64, i64* %7, align 8
  %126 = lshr i64 %125, 0
  %127 = and i64 %126, 255
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  store i32 %128, i32* %129, align 4
  %130 = load i64, i64* %7, align 8
  %131 = lshr i64 %130, 8
  %132 = and i64 %131, 255
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 1
  store i32 %133, i32* %134, align 4
  %135 = load i64, i64* %7, align 8
  %136 = lshr i64 %135, 16
  %137 = and i64 %136, 255
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 2
  store i32 %138, i32* %139, align 4
  %140 = load i64, i64* %7, align 8
  %141 = lshr i64 %140, 24
  %142 = and i64 %141, 255
  %143 = trunc i64 %142 to i32
  %144 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 3
  store i32 %143, i32* %144, align 4
  %145 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %146 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %149 = call i32 @MD5Update(i32* %147, i32* %148, i32 8)
  br label %150

150:                                              ; preds = %124, %30
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %28
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i64 @_KEYBUF(i32) #1

declare dso_local i32 @_KEYLEN(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
