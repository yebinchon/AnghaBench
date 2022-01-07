; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_copyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_internal_s = type { i64, i32*, i64, i32, i32, i32, i32, i32 }
%struct.proc = type { i32 }
%struct.user64_kevent = type { i64, i32*, i8*, i64, i32, i32, i32, i32, i32 }
%struct.user32_kevent = type { i64, i32*, i8*, i64, i32, i32, i32, i32, i32 }
%struct.kevent64_s = type { i64, i32*, i8*, i64, i32, i32, i32, i32, i32 }
%struct.kevent_qos_s = type { i64, i32*, i8*, i64, i32, i32, i32, i32, i32 }

@KEVENT_FLAG_LEGACY32 = common dso_local global i32 0, align 4
@KEVENT_FLAG_STACK_EVENTS = common dso_local global i32 0, align 4
@KEVENT_FLAG_LEGACY64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kevent_internal_s*, i32*, %struct.proc*, i32)* @kevent_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kevent_copyout(%struct.kevent_internal_s* %0, i32* %1, %struct.proc* %2, i32 %3) #0 {
  %5 = alloca %struct.kevent_internal_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.user64_kevent, align 8
  %13 = alloca %struct.user32_kevent, align 8
  %14 = alloca %struct.kevent64_s, align 8
  %15 = alloca %struct.kevent_qos_s, align 8
  store %struct.kevent_internal_s* %0, %struct.kevent_internal_s** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @KEVENT_FLAG_LEGACY32, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %106

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @KEVENT_FLAG_STACK_EVENTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.proc*, %struct.proc** %7, align 8
  %30 = call i64 @IS_64BIT_PROCESS(%struct.proc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %22
  store i32 56, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @bzero(%struct.user64_kevent* %12, i32 %33)
  %35 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %36 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %44

40:                                               ; preds = %32
  %41 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %42 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i64 [ -1, %39 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %48 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 8
  store i32 %49, i32* %50, align 8
  %51 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %52 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 7
  store i32 %53, i32* %54, align 4
  %55 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %56 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 4
  store i32 %57, i32* %58, align 8
  %59 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %60 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  %64 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %65 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.user64_kevent, %struct.user64_kevent* %12, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  %68 = ptrtoint %struct.user64_kevent* %12 to i32
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @copyout(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  br label %105

72:                                               ; preds = %22
  store i32 56, i32* %10, align 4
  %73 = bitcast %struct.user32_kevent* %13 to %struct.user64_kevent*
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @bzero(%struct.user64_kevent* %73, i32 %74)
  %76 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %77 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %81 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 8
  store i32 %82, i32* %83, align 8
  %84 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %85 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 7
  store i32 %86, i32* %87, align 4
  %88 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %89 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 4
  store i32 %90, i32* %91, align 8
  %92 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %93 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 2
  store i8* %95, i8** %96, align 8
  %97 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %98 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.user32_kevent, %struct.user32_kevent* %13, i32 0, i32 5
  store i32 %99, i32* %100, align 4
  %101 = ptrtoint %struct.user32_kevent* %13 to i32
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @copyout(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %72, %44
  br label %249

106:                                              ; preds = %4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @KEVENT_FLAG_LEGACY64, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %169

111:                                              ; preds = %106
  store i32 56, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @KEVENT_FLAG_STACK_EVENTS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = bitcast %struct.kevent64_s* %14 to %struct.user64_kevent*
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @bzero(%struct.user64_kevent* %121, i32 %122)
  %124 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %125 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 0
  store i64 %126, i64* %127, align 8
  %128 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %129 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 8
  store i32 %130, i32* %131, align 8
  %132 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %133 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 7
  store i32 %134, i32* %135, align 4
  %136 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %137 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 4
  store i32 %138, i32* %139, align 8
  %140 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %141 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 2
  store i8* %143, i8** %144, align 8
  %145 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %146 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 5
  store i32 %147, i32* %148, align 4
  %149 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %150 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %153, i32* %156, align 4
  %157 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %158 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.kevent64_s, %struct.kevent64_s* %14, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %161, i32* %164, align 4
  %165 = ptrtoint %struct.kevent64_s* %14 to i32
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @copyout(i32 %165, i32 %166, i32 %167)
  store i32 %168, i32* %11, align 4
  br label %248

169:                                              ; preds = %106
  store i32 56, i32* %10, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @KEVENT_FLAG_STACK_EVENTS, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %9, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %174, %169
  %179 = bitcast %struct.kevent_qos_s* %15 to %struct.user64_kevent*
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @bzero(%struct.user64_kevent* %179, i32 %180)
  %182 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %183 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 0
  store i64 %184, i64* %185, align 8
  %186 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %187 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 8
  store i32 %188, i32* %189, align 8
  %190 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %191 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 7
  store i32 %192, i32* %193, align 4
  %194 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %195 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 6
  store i32 %196, i32* %197, align 8
  %198 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %199 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 5
  store i32 %200, i32* %201, align 4
  %202 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %203 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 4
  store i32 %204, i32* %205, align 8
  %206 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 3
  store i64 0, i64* %206, align 8
  %207 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %208 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i8*
  %211 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 2
  store i8* %210, i8** %211, align 8
  %212 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %213 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  store i32 %216, i32* %219, align 4
  %220 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %221 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 %224, i32* %227, align 4
  %228 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %229 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  store i32 %232, i32* %235, align 4
  %236 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %237 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 3
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.kevent_qos_s, %struct.kevent_qos_s* %15, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 3
  store i32 %240, i32* %243, align 4
  %244 = ptrtoint %struct.kevent_qos_s* %15 to i32
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %10, align 4
  %247 = call i32 @copyout(i32 %244, i32 %245, i32 %246)
  store i32 %247, i32* %11, align 4
  br label %248

248:                                              ; preds = %178, %120
  br label %249

249:                                              ; preds = %248, %105
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %266, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @KEVENT_FLAG_STACK_EVENTS, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load i32, i32* %9, align 4
  %259 = load i32*, i32** %6, align 8
  store i32 %258, i32* %259, align 4
  br label %265

260:                                              ; preds = %252
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i32*, i32** %6, align 8
  store i32 %263, i32* %264, align 4
  br label %265

265:                                              ; preds = %260, %257
  br label %266

266:                                              ; preds = %265, %249
  %267 = load i32, i32* %11, align 4
  ret i32 %267
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local i32 @bzero(%struct.user64_kevent*, i32) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
