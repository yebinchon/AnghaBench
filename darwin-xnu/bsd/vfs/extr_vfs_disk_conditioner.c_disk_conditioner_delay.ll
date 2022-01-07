; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_disk_conditioner.c_disk_conditioner_delay.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_disk_conditioner.c_disk_conditioner_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { %struct._disk_conditioner_info_t* }
%struct._disk_conditioner_info_t = type { i64, %struct.timeval, %struct.TYPE_11__ }
%struct.timeval = type { double, i64 }
%struct.TYPE_11__ = type { double, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@B_READ = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global double 0.000000e+00, align 8
@DISK_IDLE_SEC = common dso_local global double 0.000000e+00, align 8
@DISK_SPINUP_SEC = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_conditioner_delay(%struct.TYPE_12__* %0, i32 %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct._disk_conditioner_info_t*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.timeval, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  store %struct._disk_conditioner_info_t* null, %struct._disk_conditioner_info_t** %14, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %15, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = call %struct.TYPE_9__* @buf_vnode(%struct.TYPE_12__* %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %18, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %236

24:                                               ; preds = %4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %9, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %236

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %33, align 8
  store %struct._disk_conditioner_info_t* %34, %struct._disk_conditioner_info_t** %14, align 8
  %35 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %36 = icmp ne %struct._disk_conditioner_info_t* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %39 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %31
  br label %236

44:                                               ; preds = %37
  %45 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %46 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %45, i32 0, i32 2
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %15, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %44
  %52 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %53 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = sub nsw i64 %63, %64
  br label %72

66:                                               ; preds = %51
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i64 [ %65, %60 ], [ %71, %66 ]
  store i64 %73, i64* %11, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %82 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %87

83:                                               ; preds = %44
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = call double @BLK_MAX(%struct.TYPE_10__* %84)
  %86 = fptosi double %85 to i64
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %83, %72
  %88 = load i64, i64* %11, align 8
  %89 = sitofp i64 %88 to double
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = call double @BLK_MAX(%struct.TYPE_10__* %90)
  %92 = fdiv double %89, %91
  %93 = call double @weighted_scale_factor(double %92)
  store double %93, double* %13, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sitofp i32 %94 to double
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = fmul double %95, %98
  %100 = load double, double* %13, align 8
  %101 = fmul double %99, %100
  store double %101, double* %10, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %87
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @B_READ, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = sitofp i32 %114 to double
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %118, 1024
  %120 = mul nsw i32 %119, 1024
  %121 = sdiv i32 %120, 8
  %122 = sitofp i32 %121 to double
  %123 = load double, double* @USEC_PER_SEC, align 8
  %124 = fdiv double %122, %123
  %125 = fdiv double %115, %124
  %126 = load double, double* %10, align 8
  %127 = fadd double %126, %125
  store double %127, double* %10, align 8
  br label %156

128:                                              ; preds = %106, %87
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @B_READ, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %7, align 4
  %142 = sitofp i32 %141 to double
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %145, 1024
  %147 = mul nsw i32 %146, 1024
  %148 = sdiv i32 %147, 8
  %149 = sitofp i32 %148 to double
  %150 = load double, double* @USEC_PER_SEC, align 8
  %151 = fdiv double %149, %150
  %152 = fdiv double %142, %151
  %153 = load double, double* %10, align 8
  %154 = fadd double %153, %152
  store double %154, double* %10, align 8
  br label %155

155:                                              ; preds = %140, %133, %128
  br label %156

156:                                              ; preds = %155, %113
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %183, label %161

161:                                              ; preds = %156
  %162 = call i32 @microuptime(%struct.timeval* %16)
  %163 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %164 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %163, i32 0, i32 1
  %165 = call i32 @timevalsub(%struct.timeval* %16, %struct.timeval* %164)
  %166 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %167 = load double, double* %166, align 8
  %168 = load double, double* @DISK_IDLE_SEC, align 8
  %169 = fcmp ogt double %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %161
  %171 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %172 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.timeval, %struct.timeval* %172, i32 0, i32 0
  %174 = load double, double* %173, align 8
  %175 = fcmp une double %174, 0.000000e+00
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load double, double* @DISK_SPINUP_SEC, align 8
  %178 = load double, double* @USEC_PER_SEC, align 8
  %179 = fmul double %177, %178
  %180 = load double, double* %10, align 8
  %181 = fadd double %180, %179
  store double %181, double* %10, align 8
  br label %182

182:                                              ; preds = %176, %170, %161
  br label %183

183:                                              ; preds = %182, %156
  %184 = load double, double* %10, align 8
  %185 = load double, double* %8, align 8
  %186 = fcmp ole double %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %189 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %188, i32 0, i32 1
  %190 = call i32 @microuptime(%struct.timeval* %189)
  br label %236

191:                                              ; preds = %183
  %192 = load double, double* %8, align 8
  %193 = load double, double* %10, align 8
  %194 = fsub double %193, %192
  store double %194, double* %10, align 8
  br label %195

195:                                              ; preds = %231, %191
  %196 = load double, double* %10, align 8
  %197 = fcmp une double %196, 0.000000e+00
  br i1 %197, label %198, label %232

198:                                              ; preds = %195
  %199 = call i32 @microuptime(%struct.timeval* %17)
  %200 = load double, double* %10, align 8
  %201 = call i32 @delay(double %200)
  %202 = call i32 @microuptime(%struct.timeval* %16)
  %203 = call i32 @timevalsub(%struct.timeval* %16, %struct.timeval* %17)
  %204 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %205 = load double, double* %204, align 8
  %206 = load double, double* @USEC_PER_SEC, align 8
  %207 = fmul double %205, %206
  %208 = load double, double* %10, align 8
  %209 = fcmp olt double %207, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %198
  %211 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %212 = load double, double* %211, align 8
  %213 = load double, double* @USEC_PER_SEC, align 8
  %214 = fmul double %212, %213
  %215 = load double, double* %10, align 8
  %216 = fsub double %215, %214
  store double %216, double* %10, align 8
  br label %218

217:                                              ; preds = %198
  br label %232

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = sitofp i64 %220 to double
  %222 = load double, double* %10, align 8
  %223 = fcmp olt double %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = sitofp i64 %226 to double
  %228 = load double, double* %10, align 8
  %229 = fsub double %228, %227
  store double %229, double* %10, align 8
  br label %231

230:                                              ; preds = %218
  br label %232

231:                                              ; preds = %224
  br label %195

232:                                              ; preds = %230, %217, %195
  %233 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %14, align 8
  %234 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %233, i32 0, i32 1
  %235 = call i32 @microuptime(%struct.timeval* %234)
  br label %236

236:                                              ; preds = %232, %187, %43, %30, %23
  ret void
}

declare dso_local %struct.TYPE_9__* @buf_vnode(%struct.TYPE_12__*) #1

declare dso_local double @BLK_MAX(%struct.TYPE_10__*) #1

declare dso_local double @weighted_scale_factor(double) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @delay(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
