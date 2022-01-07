; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_update_data_offsets.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_update_data_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.cfil_info = type { i32, %struct.cfil_entry* }
%struct.cfil_entry = type { i32, %struct.cfe_buf, %struct.cfe_buf }
%struct.cfe_buf = type { i64, i64, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pass %llu peek %llu\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"so %llx cfil detached\00", align 1
@CFIF_DROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"so %llx drop set\00", align 1
@EPIPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"pass_offset %llu <= cfe_pass_offset %llu\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"cfil_data_service_ctl_q() error %d\00", align 1
@EJUSTRETURN = common dso_local global i64 0, align 8
@CFM_MAX_OFFSET = common dso_local global i64 0, align 8
@CFIF_CLOSE_WAIT = common dso_local global i32 0, align 4
@CFEF_CFIL_DETACHED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"so %llx detached %u\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"so %llx waking\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"return %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_update_data_offsets(%struct.socket* %0, %struct.cfil_info* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.cfil_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cfil_entry*, align 8
  %15 = alloca %struct.cfe_buf*, align 8
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store %struct.cfil_entry* null, %struct.cfil_entry** %14, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @LOG_INFO, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = call i32 @socket_lock_assert_owned(%struct.socket* %21)
  %23 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %24 = icmp eq %struct.cfil_info* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load %struct.socket*, %struct.socket** %7, align 8
  %28 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %27)
  %29 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  store i64 0, i64* %13, align 8
  br label %125

30:                                               ; preds = %6
  %31 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %32 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CFIF_DROP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load %struct.socket*, %struct.socket** %7, align 8
  %40 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %39)
  %41 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* @EPIPE, align 8
  store i64 %42, i64* %13, align 8
  br label %125

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %46 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %45, i32 0, i32 1
  %47 = load %struct.cfil_entry*, %struct.cfil_entry** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %47, i64 %50
  store %struct.cfil_entry* %51, %struct.cfil_entry** %14, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %56 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %55, i32 0, i32 2
  store %struct.cfe_buf* %56, %struct.cfe_buf** %15, align 8
  br label %60

57:                                               ; preds = %44
  %58 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %59 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %58, i32 0, i32 1
  store %struct.cfe_buf* %59, %struct.cfe_buf** %15, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %63 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %69 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %71 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %74 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %79 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %82 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %66
  store i32 1, i32* %16, align 4
  br label %91

84:                                               ; preds = %60
  %85 = load i32, i32* @LOG_INFO, align 4
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %88 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %86, i64 %89)
  br label %91

91:                                               ; preds = %84, %83
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %94 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load i64, i64* %12, align 8
  %99 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %100 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.cfe_buf*, %struct.cfe_buf** %15, align 8
  %106 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %103, %97, %91
  %108 = load i32, i32* %16, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %125

111:                                              ; preds = %107
  %112 = load %struct.socket*, %struct.socket** %7, align 8
  %113 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @cfil_data_service_ctl_q(%struct.socket* %112, %struct.cfil_info* %113, i32 %114, i32 %115)
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32, i32* @LOG_ERR, align 4
  %121 = load i64, i64* %13, align 8
  %122 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %121)
  br label %125

123:                                              ; preds = %111
  %124 = load i64, i64* @EJUSTRETURN, align 8
  store i64 %124, i64* %13, align 8
  br label %125

125:                                              ; preds = %123, %119, %110, %37, %25
  %126 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %127 = icmp ne %struct.cfil_entry* %126, null
  br i1 %127, label %128, label %191

128:                                              ; preds = %125
  %129 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %130 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @CFM_MAX_OFFSET, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %137 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CFM_MAX_OFFSET, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %161, label %142

142:                                              ; preds = %135, %128
  %143 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %144 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CFIF_CLOSE_WAIT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %191

149:                                              ; preds = %142
  %150 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %151 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %151, i32 0, i32 2
  %153 = call i64 @cfil_queue_empty(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %191

155:                                              ; preds = %149
  %156 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %157 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %157, i32 0, i32 2
  %159 = call i64 @cfil_queue_empty(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %155, %135
  %162 = load i32, i32* @CFEF_CFIL_DETACHED, align 4
  %163 = load %struct.cfil_entry*, %struct.cfil_entry** %14, align 8
  %164 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i32, i32* @LOG_INFO, align 4
  %168 = load %struct.socket*, %struct.socket** %7, align 8
  %169 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %168)
  %170 = load i32, i32* %9, align 4
  %171 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %167, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %169, i32 %170)
  %172 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %173 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @CFIF_CLOSE_WAIT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %161
  %179 = load %struct.socket*, %struct.socket** %7, align 8
  %180 = call i64 @cfil_filters_attached(%struct.socket* %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load i32, i32* @LOG_INFO, align 4
  %184 = load %struct.socket*, %struct.socket** %7, align 8
  %185 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %184)
  %186 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %185)
  %187 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %188 = ptrtoint %struct.cfil_info* %187 to i32
  %189 = call i32 @wakeup(i32 %188)
  br label %190

190:                                              ; preds = %182, %178, %161
  br label %191

191:                                              ; preds = %190, %155, %149, %142, %125
  %192 = load %struct.cfil_info*, %struct.cfil_info** %8, align 8
  %193 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %192)
  %194 = load i32, i32* @LOG_INFO, align 4
  %195 = load i64, i64* %13, align 8
  %196 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %195)
  %197 = load i64, i64* %13, align 8
  %198 = trunc i64 %197 to i32
  ret i32 %198
}

declare dso_local i32 @CFIL_LOG(i32, i8*, i64, ...) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i64 @cfil_data_service_ctl_q(%struct.socket*, %struct.cfil_info*, i32, i32) #1

declare dso_local i64 @cfil_queue_empty(i32*) #1

declare dso_local i64 @cfil_filters_attached(%struct.socket*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.cfil_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
