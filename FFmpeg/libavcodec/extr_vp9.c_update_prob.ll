; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_update_prob.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_update_prob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@update_prob.inv_map_table = internal constant [255 x i32] [i32 7, i32 20, i32 33, i32 46, i32 59, i32 72, i32 85, i32 98, i32 111, i32 124, i32 137, i32 150, i32 163, i32 176, i32 189, i32 202, i32 215, i32 228, i32 241, i32 254, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 125, i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 203, i32 204, i32 205, i32 206, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223, i32 224, i32 225, i32 226, i32 227, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239, i32 240, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 253], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @update_prob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_prob(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @vp8_rac_get(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @vp8_rac_get_uint(i32* %10, i32 4)
  %12 = add nsw i32 %11, 0
  store i32 %12, i32* %5, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @vp8_rac_get(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @vp8_rac_get_uint(i32* %18, i32 4)
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %13
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @vp8_rac_get(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @vp8_rac_get_uint(i32* %26, i32 5)
  %28 = add nsw i32 %27, 32
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @vp8_rac_get_uint(i32* %30, i32 7)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 65
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 1
  %37 = sub nsw i32 %36, 65
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @vp8_rac_get(i32* %38)
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 64
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @FF_ARRAY_ELEMS(i32* getelementptr inbounds ([255 x i32], [255 x i32]* @update_prob.inv_map_table, i64 0, i64 0))
  %46 = icmp slt i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @av_assert2(i32 %47)
  br label %49

49:                                               ; preds = %41, %25
  br label %50

50:                                               ; preds = %49, %17
  br label %51

51:                                               ; preds = %50, %9
  %52 = load i32, i32* %4, align 4
  %53 = icmp sle i32 %52, 128
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [255 x i32], [255 x i32]* @update_prob.inv_map_table, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @inv_recenter_nonneg(i32 %58, i32 %60)
  %62 = add nsw i32 1, %61
  br label %72

63:                                               ; preds = %51
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [255 x i32], [255 x i32]* @update_prob.inv_map_table, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 255, %68
  %70 = call i32 @inv_recenter_nonneg(i32 %67, i32 %69)
  %71 = sub nsw i32 255, %70
  br label %72

72:                                               ; preds = %63, %54
  %73 = phi i32 [ %62, %54 ], [ %71, %63 ]
  ret i32 %73
}

declare dso_local i32 @vp8_rac_get(i32*) #1

declare dso_local i32 @vp8_rac_get_uint(i32*, i32) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @inv_recenter_nonneg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
