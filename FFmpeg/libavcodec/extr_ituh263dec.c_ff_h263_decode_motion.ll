; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263dec.c_ff_h263_decode_motion.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263dec.c_ff_h263_decode_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@mv_vlc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@MV_VLC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h263_decode_motion(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mv_vlc, i32 0, i32 0), align 4
  %15 = load i32, i32* @MV_VLC_BITS, align 4
  %16 = call i32 @get_vlc2(i32* %13, i32 %14, i32 %15, i32 2)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %4, align 4
  br label %87

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 65535, i32* %4, align 4
  br label %87

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @get_bits1(i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @get_bits(i32* %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %34, %25
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 5, %63
  %65 = call i32 @sign_extend(i32 %62, i32 %64)
  store i32 %65, i32* %9, align 4
  br label %85

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, -31
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, -63
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 64
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %69, %66
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %76, 32
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 63
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 64
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %78, %75
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %24, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
