; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_store_cname.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_store_cname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dohentry = type { i64, %struct.cnamestore* }
%struct.cnamestore = type { i64 }

@DOH_MAX_CNAME = common dso_local global i64 0, align 8
@DOH_OK = common dso_local global i64 0, align 8
@DOH_DNS_OUT_OF_RANGE = common dso_local global i64 0, align 8
@DOH_DNS_BAD_LABEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DOH_DNS_LABEL_LOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, %struct.dohentry*)* @store_cname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_cname(i8* %0, i64 %1, i32 %2, %struct.dohentry* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dohentry*, align 8
  %10 = alloca %struct.cnamestore*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dohentry* %3, %struct.dohentry** %9, align 8
  store i32 128, i32* %11, align 4
  %15 = load %struct.dohentry*, %struct.dohentry** %9, align 8
  %16 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DOH_MAX_CNAME, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @DOH_OK, align 8
  store i64 %21, i64* %5, align 8
  br label %142

22:                                               ; preds = %4
  %23 = load %struct.dohentry*, %struct.dohentry** %9, align 8
  %24 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %23, i32 0, i32 1
  %25 = load %struct.cnamestore*, %struct.cnamestore** %24, align 8
  %26 = load %struct.dohentry*, %struct.dohentry** %9, align 8
  %27 = getelementptr inbounds %struct.dohentry, %struct.dohentry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %25, i64 %28
  store %struct.cnamestore* %30, %struct.cnamestore** %10, align 8
  br label %31

31:                                               ; preds = %133, %22
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @DOH_DNS_OUT_OF_RANGE, align 8
  store i64 %37, i64* %5, align 8
  br label %142

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %12, align 1
  %44 = load i8, i8* %12, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 192
  %47 = icmp eq i32 %46, 192
  br i1 %47, label %48, label %70

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %7, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @DOH_DNS_OUT_OF_RANGE, align 8
  store i64 %55, i64* %5, align 8
  br label %142

56:                                               ; preds = %48
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 63
  %60 = shl i32 %59, 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %60, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %8, align 4
  br label %125

70:                                               ; preds = %38
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 192
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @DOH_DNS_BAD_LABEL, align 8
  store i64 %76, i64* %5, align 8
  br label %142

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80
  %82 = load i8, i8* %12, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %124

84:                                               ; preds = %81
  %85 = load %struct.cnamestore*, %struct.cnamestore** %10, align 8
  %86 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.cnamestore*, %struct.cnamestore** %10, align 8
  %91 = call i64 @cnameappend(%struct.cnamestore* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8 zeroext 1)
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %5, align 8
  br label %142

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %84
  %98 = load i32, i32* %8, align 4
  %99 = load i8, i8* %12, align 1
  %100 = zext i8 %99 to i32
  %101 = add i32 %98, %100
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* %7, align 8
  %104 = icmp ugt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i64, i64* @DOH_DNS_BAD_LABEL, align 8
  store i64 %106, i64* %5, align 8
  br label %142

107:                                              ; preds = %97
  %108 = load %struct.cnamestore*, %struct.cnamestore** %10, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %12, align 1
  %114 = call i64 @cnameappend(%struct.cnamestore* %108, i8* %112, i8 zeroext %113)
  store i64 %114, i64* %14, align 8
  %115 = load i64, i64* %14, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i64, i64* %14, align 8
  store i64 %118, i64* %5, align 8
  br label %142

119:                                              ; preds = %107
  %120 = load i8, i8* %12, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %119, %81
  br label %125

125:                                              ; preds = %124, %56
  %126 = load i8, i8* %12, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = add i32 %130, -1
  store i32 %131, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi i1 [ false, %125 ], [ %132, %129 ]
  br i1 %134, label %31, label %135

135:                                              ; preds = %133
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load i64, i64* @DOH_DNS_LABEL_LOOP, align 8
  store i64 %139, i64* %5, align 8
  br label %142

140:                                              ; preds = %135
  %141 = load i64, i64* @DOH_OK, align 8
  store i64 %141, i64* %5, align 8
  br label %142

142:                                              ; preds = %140, %138, %117, %105, %94, %75, %54, %36, %20
  %143 = load i64, i64* %5, align 8
  ret i64 %143
}

declare dso_local i64 @cnameappend(%struct.cnamestore*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
