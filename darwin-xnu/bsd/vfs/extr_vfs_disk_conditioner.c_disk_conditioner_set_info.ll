; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_disk_conditioner.c_disk_conditioner_set_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_disk_conditioner.c_disk_conditioner_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i32, %struct._disk_conditioner_info_t* }
%struct._disk_conditioner_info_t = type { i32, %struct.saved_mount_fields, %struct.TYPE_12__ }
%struct.saved_mount_fields = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i32, i64 }

@DISK_CONDITIONER_SET_ENTITLEMENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_conditioner_set_info(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct._disk_conditioner_info_t*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.saved_mount_fields*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = call i32 (...) @kauth_cred_get()
  %10 = call i32 @kauth_cred_issuser(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = call i32 (...) @current_task()
  %14 = load i32, i32* @DISK_CONDITIONER_SET_ENTITLEMENT, align 4
  %15 = call i32 @IOTaskHasEntitlement(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EPERM, align 4
  store i32 %18, i32* %3, align 4
  br label %234

19:                                               ; preds = %12
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %234

24:                                               ; preds = %19
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = call i32 @mount_lock(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 6
  %29 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %28, align 8
  store %struct._disk_conditioner_info_t* %29, %struct._disk_conditioner_info_t** %6, align 8
  %30 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %6, align 8
  %31 = icmp ne %struct._disk_conditioner_info_t* %30, null
  br i1 %31, label %70, label %32

32:                                               ; preds = %24
  %33 = call %struct._disk_conditioner_info_t* @kalloc(i32 112)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 6
  store %struct._disk_conditioner_info_t* %33, %struct._disk_conditioner_info_t** %35, align 8
  store %struct._disk_conditioner_info_t* %33, %struct._disk_conditioner_info_t** %6, align 8
  %36 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %6, align 8
  %37 = call i32 @bzero(%struct._disk_conditioner_info_t* %36, i32 112)
  %38 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %6, align 8
  %39 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %38, i32 0, i32 1
  store %struct.saved_mount_fields* %39, %struct.saved_mount_fields** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %44 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %49 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %54 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %59 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %64 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %69 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %32, %24
  %71 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %6, align 8
  %72 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %71, i32 0, i32 2
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %7, align 8
  %73 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %6, align 8
  %74 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %73, i32 0, i32 1
  store %struct.saved_mount_fields* %74, %struct.saved_mount_fields** %8, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %87 = call i32 @disk_conditioner_restore_mount_fields(%struct.TYPE_11__* %85, %struct.saved_mount_fields* %86)
  br label %88

88:                                               ; preds = %84, %79, %70
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = call i32 @memcpy(%struct.TYPE_12__* %89, %struct.TYPE_12__* %90, i32 56)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %101 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96, %88
  %105 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %106 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %96
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %120 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115, %110
  %124 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %125 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %123, %115
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %139 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134, %129
  %143 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %144 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %142, %134
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %158 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %156, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %153, %148
  %162 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %163 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 3
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %161, %153
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %177 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %175, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %172, %167
  %181 = load %struct.saved_mount_fields*, %struct.saved_mount_fields** %8, align 8
  %182 = getelementptr inbounds %struct.saved_mount_fields, %struct.saved_mount_fields* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %180, %172
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %223

191:                                              ; preds = %186
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i64 %199, i64* %201, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  store i64 %204, i64* %206, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  store i64 %209, i64* %211, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 4
  store i64 %214, i64* %216, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @MNT_IOSCALE(i64 %219)
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %191, %186
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %225 = call i32 @mount_unlock(%struct.TYPE_11__* %224)
  %226 = load %struct._disk_conditioner_info_t*, %struct._disk_conditioner_info_t** %6, align 8
  %227 = getelementptr inbounds %struct._disk_conditioner_info_t, %struct._disk_conditioner_info_t* %226, i32 0, i32 0
  %228 = call i32 @microuptime(i32* %227)
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @throttle_info_mount_reset_period(%struct.TYPE_11__* %229, i32 %232)
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %223, %22, %17
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @IOTaskHasEntitlement(i32, i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @mount_lock(%struct.TYPE_11__*) #1

declare dso_local %struct._disk_conditioner_info_t* @kalloc(i32) #1

declare dso_local i32 @bzero(%struct._disk_conditioner_info_t*, i32) #1

declare dso_local i32 @disk_conditioner_restore_mount_fields(%struct.TYPE_11__*, %struct.saved_mount_fields*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @MNT_IOSCALE(i64) #1

declare dso_local i32 @mount_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @throttle_info_mount_reset_period(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
