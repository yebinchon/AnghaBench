; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_internal_s = type { i64, i64, i32*, i32, i32, i32, i32, i32 }
%struct.proc = type { i32 }
%struct.user64_kevent = type { i64, i64, i32, i32, i32, i32 }
%struct.user32_kevent = type { i64, i32, i32, i32, i32, i64 }
%struct.kevent64_s = type { i64, i64, i32*, i32, i32, i32, i32 }
%struct.kevent_qos_s = type { i64, i64, i32*, i32, i32, i32, i32, i32 }

@KEVENT_FLAG_LEGACY32 = common dso_local global i32 0, align 4
@KEVENT_FLAG_LEGACY64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.kevent_internal_s*, %struct.proc*, i32)* @kevent_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_copyin(i32* %0, %struct.kevent_internal_s* %1, %struct.proc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kevent_internal_s*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.user64_kevent, align 8
  %13 = alloca %struct.user32_kevent, align 8
  %14 = alloca %struct.kevent64_s, align 8
  %15 = alloca %struct.kevent_qos_s, align 8
  store i32* %0, i32** %6, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %7, align 8
  store %struct.proc* %2, %struct.proc** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @KEVENT_FLAG_LEGACY32, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %98

20:                                               ; preds = %4
  %21 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %22 = call i32 @bzero(%struct.kevent_internal_s* %21, i32 48)
  %23 = load %struct.proc*, %struct.proc** %8, align 8
  %24 = call i64 @IS_64BIT_PROCESS(%struct.proc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  store i32 32, i32* %10, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = ptrtoint %struct.user64_kevent* %12 to i32
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @copyin(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %240

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %40 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %44 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %48 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %52 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %56 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %60 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %97

61:                                               ; preds = %20
  store i32 32, i32* %10, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = ptrtoint %struct.user32_kevent* %13 to i32
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @copyin(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %240

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %75 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %79 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %83 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @CAST_USER_ADDR_T(i32 %85)
  %87 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %88 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %92 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %96 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %71, %36
  br label %230

98:                                               ; preds = %4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @KEVENT_FLAG_LEGACY64, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %156

103:                                              ; preds = %98
  %104 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %105 = call i32 @bzero(%struct.kevent_internal_s* %104, i32 48)
  store i32 40, i32* %10, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  %108 = ptrtoint %struct.kevent64_s* %14 to i32
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @copyin(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %5, align 4
  br label %240

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %119 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %123 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  %124 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %127 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 4
  %128 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %131 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %135 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %139 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %145 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %143, i32* %147, align 4
  %148 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %153 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %151, i32* %155, align 4
  br label %229

156:                                              ; preds = %98
  %157 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %158 = call i32 @bzero(%struct.kevent_internal_s* %157, i32 48)
  store i32 48, i32* %10, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %159, align 4
  %161 = ptrtoint %struct.kevent_qos_s* %15 to i32
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @copyin(i32 %160, i32 %161, i32 %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %5, align 4
  br label %240

168:                                              ; preds = %156
  %169 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %172 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %176 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 8
  %177 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %180 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 4
  %181 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %184 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 8
  %185 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %188 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  %189 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %192 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %196 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %202 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %200, i32* %204, align 4
  %205 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %210 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  store i32 %208, i32* %212, align 4
  %213 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %218 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  store i32 %216, i32* %220, align 4
  %221 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %7, align 8
  %226 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 3
  store i32 %224, i32* %228, align 4
  br label %229

229:                                              ; preds = %168, %115
  br label %230

230:                                              ; preds = %229, %97
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %10, align 4
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %234
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %233, %230
  %239 = load i32, i32* %11, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %238, %166, %113, %69, %34
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local i32 @bzero(%struct.kevent_internal_s*, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
