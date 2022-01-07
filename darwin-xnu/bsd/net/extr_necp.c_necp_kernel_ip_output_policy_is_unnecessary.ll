; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_ip_output_policy_is_unnecessary.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_ip_output_policy_is_unnecessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_ip_output_policy = type { i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_RESULT_SKIP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_ALL_INTERFACES = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_POLICY_ID = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_BOUND_INTERFACE = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_PROTOCOL = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_START = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_END = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_LOCAL_PREFIX = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_START = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_END = common dso_local global i32 0, align 4
@NECP_KERNEL_CONDITION_REMOTE_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy**, i32)* @necp_kernel_ip_output_policy_is_unnecessary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_kernel_ip_output_policy_is_unnecessary(%struct.necp_kernel_ip_output_policy* %0, %struct.necp_kernel_ip_output_policy** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.necp_kernel_ip_output_policy*, align 8
  %6 = alloca %struct.necp_kernel_ip_output_policy**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.necp_kernel_ip_output_policy*, align 8
  store %struct.necp_kernel_ip_output_policy* %0, %struct.necp_kernel_ip_output_policy** %5, align 8
  store %struct.necp_kernel_ip_output_policy** %1, %struct.necp_kernel_ip_output_policy*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %311, %3
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %314

18:                                               ; preds = %14
  %19 = load %struct.necp_kernel_ip_output_policy**, %struct.necp_kernel_ip_output_policy*** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %19, i64 %21
  %23 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %22, align 8
  store %struct.necp_kernel_ip_output_policy* %23, %struct.necp_kernel_ip_output_policy** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %18
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %29 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %37 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %26
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %8, align 4
  br label %63

43:                                               ; preds = %35, %32
  %44 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %45 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %51 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %50, i32 0, i32 14
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %58 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %57, i32 0, i32 14
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %56, %49
  br label %62

62:                                               ; preds = %61, %43
  br label %311

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %18
  %65 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %66 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %73 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8
  %75 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %76 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %75, i32 0, i32 14
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %70, %64
  %80 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %81 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %82 = call i32 @necp_kernel_ip_output_policy_results_overlap(%struct.necp_kernel_ip_output_policy* %80, %struct.necp_kernel_ip_output_policy* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %311

85:                                               ; preds = %79
  %86 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %87 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @NECP_KERNEL_CONDITION_ALL_INTERFACES, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %94 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NECP_KERNEL_CONDITION_ALL_INTERFACES, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %311

100:                                              ; preds = %92, %85
  %101 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %102 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %4, align 4
  br label %316

107:                                              ; preds = %100
  %108 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %109 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %112 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %110, %113
  %115 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %116 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %311

120:                                              ; preds = %107
  %121 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %122 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %125 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %123, %126
  %128 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %129 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %132 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %127, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %120
  br label %311

137:                                              ; preds = %120
  %138 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %139 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @NECP_KERNEL_CONDITION_POLICY_ID, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %146 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %149 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %311

153:                                              ; preds = %144, %137
  %154 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %155 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @NECP_KERNEL_CONDITION_BOUND_INTERFACE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %162 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %165 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %311

169:                                              ; preds = %160, %153
  %170 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %171 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @NECP_KERNEL_CONDITION_PROTOCOL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %178 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %181 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %311

185:                                              ; preds = %176, %169
  %186 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %187 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_START, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %247

192:                                              ; preds = %185
  %193 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %194 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_END, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %216

199:                                              ; preds = %192
  %200 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %201 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %200, i32 0, i32 12
  %202 = bitcast i32* %201 to %struct.sockaddr*
  %203 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %204 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %203, i32 0, i32 13
  %205 = bitcast i32* %204 to %struct.sockaddr*
  %206 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %207 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %206, i32 0, i32 12
  %208 = bitcast i32* %207 to %struct.sockaddr*
  %209 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %210 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %209, i32 0, i32 13
  %211 = bitcast i32* %210 to %struct.sockaddr*
  %212 = call i32 @necp_is_range_in_range(%struct.sockaddr* %202, %struct.sockaddr* %205, %struct.sockaddr* %208, %struct.sockaddr* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %199
  br label %311

215:                                              ; preds = %199
  br label %246

216:                                              ; preds = %192
  %217 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %218 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @NECP_KERNEL_CONDITION_LOCAL_PREFIX, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %245

223:                                              ; preds = %216
  %224 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %225 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %228 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %226, %229
  br i1 %230, label %243, label %231

231:                                              ; preds = %223
  %232 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %233 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %232, i32 0, i32 12
  %234 = bitcast i32* %233 to %struct.sockaddr*
  %235 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %236 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %235, i32 0, i32 12
  %237 = bitcast i32* %236 to %struct.sockaddr*
  %238 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %239 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %238, i32 0, i32 8
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @necp_is_addr_in_subnet(%struct.sockaddr* %234, %struct.sockaddr* %237, i64 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %231, %223
  br label %311

244:                                              ; preds = %231
  br label %245

245:                                              ; preds = %244, %216
  br label %246

246:                                              ; preds = %245, %215
  br label %247

247:                                              ; preds = %246, %185
  %248 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %249 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_START, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %309

254:                                              ; preds = %247
  %255 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %256 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_END, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %254
  %262 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %263 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %262, i32 0, i32 10
  %264 = bitcast i32* %263 to %struct.sockaddr*
  %265 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %266 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %265, i32 0, i32 11
  %267 = bitcast i32* %266 to %struct.sockaddr*
  %268 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %269 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %268, i32 0, i32 10
  %270 = bitcast i32* %269 to %struct.sockaddr*
  %271 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %272 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %271, i32 0, i32 11
  %273 = bitcast i32* %272 to %struct.sockaddr*
  %274 = call i32 @necp_is_range_in_range(%struct.sockaddr* %264, %struct.sockaddr* %267, %struct.sockaddr* %270, %struct.sockaddr* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %261
  br label %311

277:                                              ; preds = %261
  br label %308

278:                                              ; preds = %254
  %279 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %280 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @NECP_KERNEL_CONDITION_REMOTE_PREFIX, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %307

285:                                              ; preds = %278
  %286 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %287 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %286, i32 0, i32 9
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %290 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %289, i32 0, i32 9
  %291 = load i64, i64* %290, align 8
  %292 = icmp sgt i64 %288, %291
  br i1 %292, label %305, label %293

293:                                              ; preds = %285
  %294 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %295 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %294, i32 0, i32 10
  %296 = bitcast i32* %295 to %struct.sockaddr*
  %297 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %298 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %297, i32 0, i32 10
  %299 = bitcast i32* %298 to %struct.sockaddr*
  %300 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %12, align 8
  %301 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %300, i32 0, i32 9
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @necp_is_addr_in_subnet(%struct.sockaddr* %296, %struct.sockaddr* %299, i64 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %293, %285
  br label %311

306:                                              ; preds = %293
  br label %307

307:                                              ; preds = %306, %278
  br label %308

308:                                              ; preds = %307, %277
  br label %309

309:                                              ; preds = %308, %247
  %310 = load i32, i32* @TRUE, align 4
  store i32 %310, i32* %4, align 4
  br label %316

311:                                              ; preds = %305, %276, %243, %214, %184, %168, %152, %136, %119, %99, %84, %62
  %312 = load i32, i32* %11, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %11, align 4
  br label %14

314:                                              ; preds = %14
  %315 = load i32, i32* @FALSE, align 4
  store i32 %315, i32* %4, align 4
  br label %316

316:                                              ; preds = %314, %309, %105
  %317 = load i32, i32* %4, align 4
  ret i32 %317
}

declare dso_local i32 @necp_kernel_ip_output_policy_results_overlap(%struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy*) #1

declare dso_local i32 @necp_is_range_in_range(%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @necp_is_addr_in_subnet(%struct.sockaddr*, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
