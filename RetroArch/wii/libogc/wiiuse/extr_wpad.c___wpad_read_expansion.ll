; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_read_expansion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___wpad_read_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.TYPE_42__, %struct.TYPE_39__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_40__, %struct.TYPE_35__, %struct.TYPE_50__ }
%struct.TYPE_40__ = type { i32, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_29__, i32, i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_50__ = type { %struct.TYPE_49__, %struct.TYPE_44__, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i32, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__, %struct.TYPE_32__, %struct.TYPE_47__ }
%struct.TYPE_38__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_27__, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32, i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__, %struct.TYPE_37__, i32 }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, %struct.TYPE_38__, %struct.TYPE_32__, %struct.TYPE_47__ }
%struct._wpad_thresh = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimote_t*, %struct.TYPE_43__*, %struct._wpad_thresh*)* @__wpad_read_expansion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wpad_read_expansion(%struct.wiimote_t* %0, %struct.TYPE_43__* %1, %struct._wpad_thresh* %2) #0 {
  %4 = alloca %struct.wiimote_t*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct._wpad_thresh*, align 8
  %7 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %4, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %5, align 8
  store %struct._wpad_thresh* %2, %struct._wpad_thresh** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %309 [
    i32 128, label %12
    i32 130, label %125
    i32 129, label %255
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %14, i32 0, i32 3
  %16 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %17 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %17, i32 0, i32 2
  %19 = bitcast %struct.TYPE_47__* %15 to i8*
  %20 = bitcast %struct.TYPE_47__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 24, i1 false)
  %21 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %22 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %25 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %30 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @STATE_CHECK_SIMPLE(i32 %23, i32 %28, i32 %34)
  %36 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %37 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %40 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %46 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @STATE_CHECK(i32 %38, i32 %44, i32 %51)
  %53 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %54 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %57 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %63 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @STATE_CHECK(i32 %55, i32 %61, i32 %68)
  %70 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %71 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %74 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %80 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @STATE_CHECK(i32 %72, i32 %78, i32 %85)
  %87 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %88 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %91 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %98 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @STATE_CHECK(i32 %89, i32 %96, i32 %104)
  %106 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %107 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %110 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %117 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @STATE_CHECK(i32 %108, i32 %115, i32 %123)
  br label %309

125:                                              ; preds = %3
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 2
  %129 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %130 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %130, i32 0, i32 1
  %132 = bitcast %struct.TYPE_32__* %128 to i8*
  %133 = bitcast %struct.TYPE_32__* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 28, i1 false)
  %134 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %135 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %138 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %143 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @STATE_CHECK_SIMPLE(i32 %136, i32 %141, i32 %147)
  %149 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %150 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %153 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %158 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @STATE_CHECK(i32 %151, i32 %156, i32 %162)
  %164 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %165 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %168 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %173 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @STATE_CHECK(i32 %166, i32 %171, i32 %177)
  %179 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %180 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %183 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %190 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @STATE_CHECK(i32 %181, i32 %188, i32 %196)
  %198 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %199 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %202 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %209 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @STATE_CHECK(i32 %200, i32 %207, i32 %215)
  %217 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %218 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %221 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %228 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @STATE_CHECK(i32 %219, i32 %226, i32 %234)
  %236 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %237 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %240 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %247 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @STATE_CHECK(i32 %238, i32 %245, i32 %253)
  br label %309

255:                                              ; preds = %3
  %256 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %257, i32 0, i32 1
  %259 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %260 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %260, i32 0, i32 0
  %262 = bitcast %struct.TYPE_38__* %258 to i8*
  %263 = bitcast %struct.TYPE_38__* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %262, i8* align 4 %263, i64 12, i1 false)
  %264 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %265 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %268 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %273 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @STATE_CHECK(i32 %266, i32 %271, i32 %277)
  %279 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %280 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %283 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %288 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @STATE_CHECK(i32 %281, i32 %286, i32 %292)
  %294 = load %struct._wpad_thresh*, %struct._wpad_thresh** %6, align 8
  %295 = getelementptr inbounds %struct._wpad_thresh, %struct._wpad_thresh* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %298 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %303 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @STATE_CHECK(i32 %296, i32 %301, i32 %307)
  br label %309

309:                                              ; preds = %3, %255, %125, %12
  %310 = load i32, i32* %7, align 4
  ret i32 %310
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @STATE_CHECK_SIMPLE(i32, i32, i32) #2

declare dso_local i32 @STATE_CHECK(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
