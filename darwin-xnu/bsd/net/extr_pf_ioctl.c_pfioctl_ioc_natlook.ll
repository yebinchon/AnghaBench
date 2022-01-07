; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_natlook.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_natlook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_natlook = type { i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.proc = type { i32 }
%struct.pf_state_key = type { %struct.TYPE_13__, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__, i32 }
%struct.pf_state = type { %struct.pf_state_key* }
%struct.pf_state_key_cmp = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PF_IN = common dso_local global i32 0, align 4
@PF_OUT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pfioc_natlook*, %struct.proc*)* @pfioctl_ioc_natlook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfioctl_ioc_natlook(i32 %0, %struct.pfioc_natlook* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfioc_natlook*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pf_state_key*, align 8
  %9 = alloca %struct.pf_state*, align 8
  %10 = alloca %struct.pf_state_key_cmp, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pfioc_natlook* %1, %struct.pfioc_natlook** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %221 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %15 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %16 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %19 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 7
  store i32 %20, i32* %21, align 4
  %22 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %23 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 6
  store i32 %24, i32* %25, align 4
  %26 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %27 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %14
  %31 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %32 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %31, i32 0, i32 4
  %33 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %34 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PF_AZERO(i32* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %30
  %39 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %40 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %39, i32 0, i32 9
  %41 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %42 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PF_AZERO(i32* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %38
  %47 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %48 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IPPROTO_TCP, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %54 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IPPROTO_UDP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %52, %46
  %59 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %60 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %66 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64, %58, %38, %30, %14
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %7, align 4
  br label %220

72:                                               ; preds = %64, %52
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @PF_IN, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %72
  %77 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %78 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 5
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %84 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %83, i32 0, i32 9
  %85 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %86 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PF_ACPY(i32* %82, i32* %84, i32 %87)
  %89 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %92 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %91, i32 0, i32 8
  %93 = call i32 @memcpy(i32* %90, %struct.TYPE_14__* %92, i32 4)
  %94 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %97 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %96, i32 0, i32 4
  %98 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %99 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PF_ACPY(i32* %95, i32* %97, i32 %100)
  %102 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %105 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %104, i32 0, i32 1
  %106 = call i32 @memcpy(i32* %103, %struct.TYPE_14__* %105, i32 4)
  %107 = load i32, i32* @PF_IN, align 4
  %108 = call %struct.pf_state* @pf_find_state_all(%struct.pf_state_key_cmp* %10, i32 %107, i32* %11)
  store %struct.pf_state* %108, %struct.pf_state** %9, align 8
  br label %142

109:                                              ; preds = %72
  %110 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %111 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %117 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %116, i32 0, i32 9
  %118 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %119 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PF_ACPY(i32* %115, i32* %117, i32 %120)
  %122 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %125 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %124, i32 0, i32 8
  %126 = call i32 @memcpy(i32* %123, %struct.TYPE_14__* %125, i32 4)
  %127 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %130 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %129, i32 0, i32 4
  %131 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %132 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @PF_ACPY(i32* %128, i32* %130, i32 %133)
  %135 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %10, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %138 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %137, i32 0, i32 1
  %139 = call i32 @memcpy(i32* %136, %struct.TYPE_14__* %138, i32 4)
  %140 = load i32, i32* @PF_OUT, align 4
  %141 = call %struct.pf_state* @pf_find_state_all(%struct.pf_state_key_cmp* %10, i32 %140, i32* %11)
  store %struct.pf_state* %141, %struct.pf_state** %9, align 8
  br label %142

142:                                              ; preds = %109, %76
  %143 = load i32, i32* %11, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @E2BIG, align 4
  store i32 %146, i32* %7, align 4
  br label %219

147:                                              ; preds = %142
  %148 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %149 = icmp ne %struct.pf_state* %148, null
  br i1 %149, label %150, label %216

150:                                              ; preds = %147
  %151 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %152 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %151, i32 0, i32 0
  %153 = load %struct.pf_state_key*, %struct.pf_state_key** %152, align 8
  store %struct.pf_state_key* %153, %struct.pf_state_key** %8, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @PF_IN, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %150
  %158 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %159 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %158, i32 0, i32 5
  %160 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %161 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %164 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @PF_ACPY(i32* %159, i32* %162, i32 %165)
  %167 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %168 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %167, i32 0, i32 2
  %169 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %170 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = call i32 @memcpy(i32* %168, %struct.TYPE_14__* %171, i32 4)
  %173 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %174 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %173, i32 0, i32 7
  %175 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %176 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %175, i32 0, i32 9
  %177 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %178 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @PF_ACPY(i32* %174, i32* %176, i32 %179)
  %181 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %182 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %181, i32 0, i32 6
  %183 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %184 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %183, i32 0, i32 8
  %185 = call i32 @memcpy(i32* %182, %struct.TYPE_14__* %184, i32 4)
  br label %215

186:                                              ; preds = %150
  %187 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %188 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %187, i32 0, i32 7
  %189 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %190 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %193 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @PF_ACPY(i32* %188, i32* %191, i32 %194)
  %196 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %197 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %196, i32 0, i32 6
  %198 = load %struct.pf_state_key*, %struct.pf_state_key** %8, align 8
  %199 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = call i32 @memcpy(i32* %197, %struct.TYPE_14__* %200, i32 4)
  %202 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %203 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %202, i32 0, i32 5
  %204 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %205 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %204, i32 0, i32 4
  %206 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %207 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @PF_ACPY(i32* %203, i32* %205, i32 %208)
  %210 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %211 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %210, i32 0, i32 2
  %212 = load %struct.pfioc_natlook*, %struct.pfioc_natlook** %5, align 8
  %213 = getelementptr inbounds %struct.pfioc_natlook, %struct.pfioc_natlook* %212, i32 0, i32 1
  %214 = call i32 @memcpy(i32* %211, %struct.TYPE_14__* %213, i32 4)
  br label %215

215:                                              ; preds = %186, %157
  br label %218

216:                                              ; preds = %147
  %217 = load i32, i32* @ENOENT, align 4
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %216, %215
  br label %219

219:                                              ; preds = %218, %145
  br label %220

220:                                              ; preds = %219, %70
  br label %223

221:                                              ; preds = %3
  %222 = call i32 @VERIFY(i32 0)
  br label %223

223:                                              ; preds = %221, %220
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

declare dso_local i32 @PF_AZERO(i32*, i32) #1

declare dso_local i32 @PF_ACPY(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local %struct.pf_state* @pf_find_state_all(%struct.pf_state_key_cmp*, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
