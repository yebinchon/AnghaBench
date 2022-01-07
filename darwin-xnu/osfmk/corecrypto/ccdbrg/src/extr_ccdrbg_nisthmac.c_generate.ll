; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_generate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/corecrypto/ccdbrg/src/extr_ccdrbg_nisthmac.c_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdrbg_state = type { i32 }
%struct.ccdrbg_nisthmac_state = type { i64, i64, i32, i32, i32, i32, i32, %struct.ccdrbg_nisthmac_custom* }
%struct.ccdrbg_nisthmac_custom = type { %struct.ccdigest_info* }
%struct.ccdigest_info = type { i32 }

@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@CCDRBG_STATUS_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdrbg_state*, i64, i8*, i64, i8*)* @generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate(%struct.ccdrbg_state* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccdrbg_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ccdrbg_nisthmac_state*, align 8
  %13 = alloca %struct.ccdrbg_nisthmac_custom*, align 8
  %14 = alloca %struct.ccdigest_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.ccdrbg_state* %0, %struct.ccdrbg_state** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %19 = bitcast %struct.ccdrbg_state* %18 to %struct.ccdrbg_nisthmac_state*
  store %struct.ccdrbg_nisthmac_state* %19, %struct.ccdrbg_nisthmac_state** %12, align 8
  %20 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %21 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %20, i32 0, i32 7
  %22 = load %struct.ccdrbg_nisthmac_custom*, %struct.ccdrbg_nisthmac_custom** %21, align 8
  store %struct.ccdrbg_nisthmac_custom* %22, %struct.ccdrbg_nisthmac_custom** %13, align 8
  %23 = load %struct.ccdrbg_nisthmac_custom*, %struct.ccdrbg_nisthmac_custom** %13, align 8
  %24 = getelementptr inbounds %struct.ccdrbg_nisthmac_custom, %struct.ccdrbg_nisthmac_custom* %23, i32 0, i32 0
  %25 = load %struct.ccdigest_info*, %struct.ccdigest_info** %24, align 8
  store %struct.ccdigest_info* %25, %struct.ccdigest_info** %14, align 8
  %26 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %27 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %35

33:                                               ; preds = %5
  %34 = load i64, i64* %10, align 8
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i64 [ 0, %32 ], [ %34, %33 ]
  %37 = call i32 @validate_gen_params(i32 %28, i64 %29, i64 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %154

43:                                               ; preds = %35
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @hmac_dbrg_update(%struct.ccdrbg_state* %50, i64 %51, i8* %52, i32 0, i32* null, i32 0, i32* null)
  br label %54

54:                                               ; preds = %49, %46, %43
  %55 = load i8*, i8** %9, align 8
  store i8* %55, i8** %16, align 8
  br label %56

56:                                               ; preds = %123, %54
  %57 = load i64, i64* %8, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %142

59:                                               ; preds = %56
  %60 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %61 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %111, label %64

64:                                               ; preds = %59
  %65 = load %struct.ccdigest_info*, %struct.ccdigest_info** %14, align 8
  %66 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %67 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %70 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %73 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %76 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %79 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cchmac(%struct.ccdigest_info* %65, i32 %68, i32 %71, i64 %74, i32 %77, i32 %80)
  %82 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %83 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %86 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %89 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @cc_cmp_safe(i64 %84, i32 %87, i32 %90)
  %92 = icmp eq i64 0, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %64
  %94 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %95 = call i32 @done(%struct.ccdrbg_state* %94)
  %96 = load i32, i32* @CCDRBG_STATUS_ABORT, align 4
  store i32 %96, i32* %15, align 4
  %97 = call i32 @cc_try_abort(i32* null)
  br label %152

98:                                               ; preds = %64
  %99 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %100 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %103 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @CC_SWAP(i32 %101, i32 %104)
  %106 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %107 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %110 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %98, %59
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %114 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ugt i64 %112, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %119 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  br label %123

121:                                              ; preds = %111
  %122 = load i64, i64* %8, align 8
  br label %123

123:                                              ; preds = %121, %117
  %124 = phi i64 [ %120, %117 ], [ %122, %121 ]
  store i64 %124, i64* %17, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %127 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %17, align 8
  %130 = call i32 @CC_MEMCPY(i8* %125, i32 %128, i64 %129)
  %131 = load i64, i64* %17, align 8
  %132 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %133 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %134, %131
  store i64 %135, i64* %133, align 8
  %136 = load i64, i64* %17, align 8
  %137 = load i8*, i8** %16, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 %136
  store i8* %138, i8** %16, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* %8, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %8, align 8
  br label %56

142:                                              ; preds = %56
  %143 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @hmac_dbrg_update(%struct.ccdrbg_state* %143, i64 %144, i8* %145, i32 0, i32* null, i32 0, i32* null)
  %147 = load %struct.ccdrbg_nisthmac_state*, %struct.ccdrbg_nisthmac_state** %12, align 8
  %148 = getelementptr inbounds %struct.ccdrbg_nisthmac_state, %struct.ccdrbg_nisthmac_state* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %142, %93
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %41
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @validate_gen_params(i32, i64, i64) #1

declare dso_local i32 @hmac_dbrg_update(%struct.ccdrbg_state*, i64, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @cchmac(%struct.ccdigest_info*, i32, i32, i64, i32, i32) #1

declare dso_local i64 @cc_cmp_safe(i64, i32, i32) #1

declare dso_local i32 @done(%struct.ccdrbg_state*) #1

declare dso_local i32 @cc_try_abort(i32*) #1

declare dso_local i32 @CC_SWAP(i32, i32) #1

declare dso_local i32 @CC_MEMCPY(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
