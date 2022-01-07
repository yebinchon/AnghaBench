; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_effective_bitfield.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_effective_bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.task_effective_policy }
%struct.task_effective_policy = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@POLICY_EFF_IO_TIER_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_IO_PASSIVE = common dso_local global i32 0, align 4
@POLICY_EFF_DARWIN_BG = common dso_local global i32 0, align 4
@POLICY_EFF_LOWPRI_CPU = common dso_local global i32 0, align 4
@POLICY_EFF_TERMINATED = common dso_local global i32 0, align 4
@POLICY_EFF_ALL_SOCKETS_BG = common dso_local global i32 0, align 4
@POLICY_EFF_NEW_SOCKETS_BG = common dso_local global i32 0, align 4
@POLICY_EFF_BG_IOTIER_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_QOS_UI_IS_URGENT = common dso_local global i32 0, align 4
@POLICY_EFF_TAL_ENGAGED = common dso_local global i32 0, align 4
@POLICY_EFF_WATCHERS_BG = common dso_local global i32 0, align 4
@POLICY_EFF_SUP_ACTIVE = common dso_local global i32 0, align 4
@POLICY_EFF_SUP_CPU = common dso_local global i32 0, align 4
@POLICY_EFF_ROLE_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_LATENCY_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_THROUGH_QOS_SHIFT = common dso_local global i32 0, align 4
@POLICY_EFF_SFI_MANAGED = common dso_local global i32 0, align 4
@POLICY_EFF_QOS_CEILING_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_effective_bitfield(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_effective_policy, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = bitcast %struct.task_effective_policy* %4 to i8*
  %8 = bitcast %struct.task_effective_policy* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 144, i1 false)
  %9 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 17
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 17
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @POLICY_EFF_IO_TIER_SHIFT, align 4
  %17 = shl i32 %15, %16
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %17, %12 ], [ 0, %18 ]
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 16
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @POLICY_EFF_IO_PASSIVE, align 4
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 15
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @POLICY_EFF_DARWIN_BG, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 14
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @POLICY_EFF_LOWPRI_CPU, align 4
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 13
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @POLICY_EFF_TERMINATED, align 4
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 12
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @POLICY_EFF_ALL_SOCKETS_BG, align 4
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  %73 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @POLICY_EFF_NEW_SOCKETS_BG, align 4
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @POLICY_EFF_BG_IOTIER_SHIFT, align 4
  %91 = shl i32 %89, %90
  br label %93

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %86
  %94 = phi i32 [ %91, %86 ], [ 0, %92 ]
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @POLICY_EFF_QOS_UI_IS_URGENT, align 4
  br label %103

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %3, align 4
  %107 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @POLICY_EFF_TAL_ENGAGED, align 4
  br label %113

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  %117 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @POLICY_EFF_WATCHERS_BG, align 4
  br label %123

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  %125 = load i32, i32* %3, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %3, align 4
  %127 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @POLICY_EFF_SUP_ACTIVE, align 4
  br label %133

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = load i32, i32* %3, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %3, align 4
  %137 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @POLICY_EFF_SUP_CPU, align 4
  br label %143

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %3, align 4
  %147 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* @POLICY_EFF_ROLE_SHIFT, align 4
  %155 = shl i32 %153, %154
  br label %157

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %150
  %158 = phi i32 [ %155, %150 ], [ 0, %156 ]
  %159 = load i32, i32* %3, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %3, align 4
  %161 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i32, i32* @POLICY_EFF_LATENCY_QOS_SHIFT, align 4
  %169 = shl i32 %167, %168
  br label %171

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %164
  %172 = phi i32 [ %169, %164 ], [ 0, %170 ]
  %173 = load i32, i32* %3, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %3, align 4
  %175 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = load i32, i32* @POLICY_EFF_THROUGH_QOS_SHIFT, align 4
  %183 = shl i32 %181, %182
  br label %185

184:                                              ; preds = %171
  br label %185

185:                                              ; preds = %184, %178
  %186 = phi i32 [ %183, %178 ], [ 0, %184 ]
  %187 = load i32, i32* %3, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %3, align 4
  %189 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i32, i32* @POLICY_EFF_SFI_MANAGED, align 4
  br label %195

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %192
  %196 = phi i32 [ %193, %192 ], [ 0, %194 ]
  %197 = load i32, i32* %3, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %3, align 4
  %199 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.task_effective_policy, %struct.task_effective_policy* %4, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i32, i32* @POLICY_EFF_QOS_CEILING_SHIFT, align 4
  %207 = shl i32 %205, %206
  br label %209

208:                                              ; preds = %195
  br label %209

209:                                              ; preds = %208, %202
  %210 = phi i32 [ %207, %202 ], [ 0, %208 ]
  %211 = load i32, i32* %3, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %3, align 4
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
