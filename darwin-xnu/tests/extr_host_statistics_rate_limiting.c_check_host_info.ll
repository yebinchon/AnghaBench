; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_host_statistics_rate_limiting.c_check_host_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_host_statistics_rate_limiting.c_check_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.all_host_info = type { i32, i32, i32, i32 }

@HOST_VM_INFO64_REV0_COUNT = common dso_local global i32 0, align 4
@HOST_VM_INFO64_REV1_COUNT = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HOST_VM_INFO64_REV0 byte %lu iter %lu\00", align 1
@HOST_VM_INFO_REV0_COUNT = common dso_local global i32 0, align 4
@HOST_VM_INFO_REV2_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"HOST_VM_INFO_REV0 byte %lu iter %lu\00", align 1
@HOST_VM_INFO_REV1_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"HOST_VM_INFO_REV1 byte %lu iter %lu\00", align 1
@TASK_POWER_INFO_COUNT = common dso_local global i32 0, align 4
@TASK_POWER_INFO_V2_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"TASK_POWER_INFO_COUNT byte %lu iter %lu\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"No data overflow\00", align 1
@MAX_ATTEMP_PER_SEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"all_host_info iter %lu does not match iter %lu\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Data was cached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.all_host_info*, i64, i8)* @check_host_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_host_info(%struct.all_host_info* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca %struct.all_host_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.all_host_info* %0, %struct.all_host_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %127, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %130

14:                                               ; preds = %10
  %15 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %15, i64 %16
  %18 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %17, i32 0, i32 3
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* @HOST_VM_INFO64_REV0_COUNT, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %39, %14
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @HOST_VM_INFO64_REV1_COUNT, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i32, i32* @T_QUIET, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i8, i8* %6, align 1
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @T_ASSERT_EQ(i8 signext %34, i8 signext %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %43, i64 %44
  %46 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %45, i32 0, i32 2
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %7, align 8
  %48 = load i32, i32* @HOST_VM_INFO_REV0_COUNT, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %67, %42
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* @HOST_VM_INFO_REV2_COUNT, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* @T_QUIET, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8, i8* %6, align 1
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @T_ASSERT_EQ(i8 signext %62, i8 signext %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %51

70:                                               ; preds = %51
  %71 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %71, i64 %72
  %74 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %73, i32 0, i32 1
  %75 = bitcast i32* %74 to i8*
  store i8* %75, i8** %7, align 8
  %76 = load i32, i32* @HOST_VM_INFO_REV1_COUNT, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %95, %70
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* @HOST_VM_INFO_REV2_COUNT, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load i32, i32* @T_QUIET, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i8, i8* %6, align 1
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @T_ASSERT_EQ(i8 signext %90, i8 signext %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %93)
  br label %95

95:                                               ; preds = %85
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %8, align 8
  br label %79

98:                                               ; preds = %79
  %99 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %99, i64 %100
  %102 = getelementptr inbounds %struct.all_host_info, %struct.all_host_info* %101, i32 0, i32 0
  %103 = bitcast i32* %102 to i8*
  store i8* %103, i8** %7, align 8
  %104 = load i32, i32* @TASK_POWER_INFO_COUNT, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %123, %98
  %108 = load i64, i64* %8, align 8
  %109 = load i32, i32* @TASK_POWER_INFO_V2_COUNT, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load i32, i32* @T_QUIET, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i8, i8* %6, align 1
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @T_ASSERT_EQ(i8 signext %118, i8 signext %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %120, i64 %121)
  br label %123

123:                                              ; preds = %113
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %8, align 8
  br label %107

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %9, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %9, align 8
  br label %10

130:                                              ; preds = %10
  %131 = call i32 @T_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %132 = load %struct.all_host_info*, %struct.all_host_info** %4, align 8
  %133 = bitcast %struct.all_host_info* %132 to i8*
  store i8* %133, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %134

134:                                              ; preds = %171, %130
  %135 = load i64, i64* %8, align 8
  %136 = icmp ult i64 %135, 16
  br i1 %136, label %137, label %174

137:                                              ; preds = %134
  %138 = load i32, i32* @MAX_ATTEMP_PER_SEC, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %167, %137
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* %5, align 8
  %144 = sub i64 %143, 1
  %145 = icmp ult i64 %142, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %141
  %147 = load i32, i32* @T_QUIET, align 4
  %148 = load i8*, i8** %7, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = mul i64 %150, 16
  %152 = add i64 %149, %151
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = load i8*, i8** %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = add i64 %157, 1
  %159 = mul i64 %158, 16
  %160 = add i64 %156, %159
  %161 = getelementptr inbounds i8, i8* %155, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %9, align 8
  %165 = add i64 %164, 1
  %166 = call i32 @T_ASSERT_EQ(i8 signext %154, i8 signext %162, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %163, i64 %165)
  br label %167

167:                                              ; preds = %146
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %141

170:                                              ; preds = %141
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %8, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %8, align 8
  br label %134

174:                                              ; preds = %134
  %175 = call i32 @T_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @T_ASSERT_EQ(i8 signext, i8 signext, i8*, i64, i64) #1

declare dso_local i32 @T_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
