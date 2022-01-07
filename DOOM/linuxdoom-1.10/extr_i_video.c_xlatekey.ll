; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_xlatekey.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_xlatekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@X_display = common dso_local global i32 0, align 4
@X_event = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@KEY_LEFTARROW = common dso_local global i32 0, align 4
@KEY_RIGHTARROW = common dso_local global i32 0, align 4
@KEY_DOWNARROW = common dso_local global i32 0, align 4
@KEY_UPARROW = common dso_local global i32 0, align 4
@KEY_ESCAPE = common dso_local global i32 0, align 4
@KEY_ENTER = common dso_local global i32 0, align 4
@KEY_TAB = common dso_local global i32 0, align 4
@KEY_F1 = common dso_local global i32 0, align 4
@KEY_F2 = common dso_local global i32 0, align 4
@KEY_F3 = common dso_local global i32 0, align 4
@KEY_F4 = common dso_local global i32 0, align 4
@KEY_F5 = common dso_local global i32 0, align 4
@KEY_F6 = common dso_local global i32 0, align 4
@KEY_F7 = common dso_local global i32 0, align 4
@KEY_F8 = common dso_local global i32 0, align 4
@KEY_F9 = common dso_local global i32 0, align 4
@KEY_F10 = common dso_local global i32 0, align 4
@KEY_F11 = common dso_local global i32 0, align 4
@KEY_F12 = common dso_local global i32 0, align 4
@KEY_BACKSPACE = common dso_local global i32 0, align 4
@KEY_PAUSE = common dso_local global i32 0, align 4
@KEY_EQUALS = common dso_local global i32 0, align 4
@KEY_MINUS = common dso_local global i32 0, align 4
@KEY_RSHIFT = common dso_local global i32 0, align 4
@KEY_RCTRL = common dso_local global i32 0, align 4
@KEY_RALT = common dso_local global i32 0, align 4
@XK_space = common dso_local global i32 0, align 4
@XK_asciitilde = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xlatekey() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @X_display, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @X_event, i32 0, i32 0, i32 0), align 4
  %4 = call i32 @XKeycodeToKeysym(i32 %2, i32 %3, i32 0)
  store i32 %4, i32* %1, align 4
  switch i32 %4, label %57 [
    i32 139, label %5
    i32 134, label %7
    i32 155, label %9
    i32 130, label %11
    i32 154, label %13
    i32 135, label %15
    i32 131, label %17
    i32 153, label %19
    i32 149, label %21
    i32 148, label %23
    i32 147, label %25
    i32 146, label %27
    i32 145, label %29
    i32 144, label %31
    i32 143, label %33
    i32 142, label %35
    i32 152, label %37
    i32 151, label %39
    i32 150, label %41
    i32 159, label %43
    i32 156, label %43
    i32 136, label %45
    i32 141, label %47
    i32 129, label %47
    i32 140, label %49
    i32 128, label %49
    i32 133, label %51
    i32 132, label %51
    i32 158, label %53
    i32 157, label %53
    i32 161, label %55
    i32 138, label %55
    i32 160, label %55
    i32 137, label %55
  ]

5:                                                ; preds = %0
  %6 = load i32, i32* @KEY_LEFTARROW, align 4
  store i32 %6, i32* %1, align 4
  br label %81

7:                                                ; preds = %0
  %8 = load i32, i32* @KEY_RIGHTARROW, align 4
  store i32 %8, i32* %1, align 4
  br label %81

9:                                                ; preds = %0
  %10 = load i32, i32* @KEY_DOWNARROW, align 4
  store i32 %10, i32* %1, align 4
  br label %81

11:                                               ; preds = %0
  %12 = load i32, i32* @KEY_UPARROW, align 4
  store i32 %12, i32* %1, align 4
  br label %81

13:                                               ; preds = %0
  %14 = load i32, i32* @KEY_ESCAPE, align 4
  store i32 %14, i32* %1, align 4
  br label %81

15:                                               ; preds = %0
  %16 = load i32, i32* @KEY_ENTER, align 4
  store i32 %16, i32* %1, align 4
  br label %81

17:                                               ; preds = %0
  %18 = load i32, i32* @KEY_TAB, align 4
  store i32 %18, i32* %1, align 4
  br label %81

19:                                               ; preds = %0
  %20 = load i32, i32* @KEY_F1, align 4
  store i32 %20, i32* %1, align 4
  br label %81

21:                                               ; preds = %0
  %22 = load i32, i32* @KEY_F2, align 4
  store i32 %22, i32* %1, align 4
  br label %81

23:                                               ; preds = %0
  %24 = load i32, i32* @KEY_F3, align 4
  store i32 %24, i32* %1, align 4
  br label %81

25:                                               ; preds = %0
  %26 = load i32, i32* @KEY_F4, align 4
  store i32 %26, i32* %1, align 4
  br label %81

27:                                               ; preds = %0
  %28 = load i32, i32* @KEY_F5, align 4
  store i32 %28, i32* %1, align 4
  br label %81

29:                                               ; preds = %0
  %30 = load i32, i32* @KEY_F6, align 4
  store i32 %30, i32* %1, align 4
  br label %81

31:                                               ; preds = %0
  %32 = load i32, i32* @KEY_F7, align 4
  store i32 %32, i32* %1, align 4
  br label %81

33:                                               ; preds = %0
  %34 = load i32, i32* @KEY_F8, align 4
  store i32 %34, i32* %1, align 4
  br label %81

35:                                               ; preds = %0
  %36 = load i32, i32* @KEY_F9, align 4
  store i32 %36, i32* %1, align 4
  br label %81

37:                                               ; preds = %0
  %38 = load i32, i32* @KEY_F10, align 4
  store i32 %38, i32* %1, align 4
  br label %81

39:                                               ; preds = %0
  %40 = load i32, i32* @KEY_F11, align 4
  store i32 %40, i32* %1, align 4
  br label %81

41:                                               ; preds = %0
  %42 = load i32, i32* @KEY_F12, align 4
  store i32 %42, i32* %1, align 4
  br label %81

43:                                               ; preds = %0, %0
  %44 = load i32, i32* @KEY_BACKSPACE, align 4
  store i32 %44, i32* %1, align 4
  br label %81

45:                                               ; preds = %0
  %46 = load i32, i32* @KEY_PAUSE, align 4
  store i32 %46, i32* %1, align 4
  br label %81

47:                                               ; preds = %0, %0
  %48 = load i32, i32* @KEY_EQUALS, align 4
  store i32 %48, i32* %1, align 4
  br label %81

49:                                               ; preds = %0, %0
  %50 = load i32, i32* @KEY_MINUS, align 4
  store i32 %50, i32* %1, align 4
  br label %81

51:                                               ; preds = %0, %0
  %52 = load i32, i32* @KEY_RSHIFT, align 4
  store i32 %52, i32* %1, align 4
  br label %81

53:                                               ; preds = %0, %0
  %54 = load i32, i32* @KEY_RCTRL, align 4
  store i32 %54, i32* %1, align 4
  br label %81

55:                                               ; preds = %0, %0, %0, %0
  %56 = load i32, i32* @KEY_RALT, align 4
  store i32 %56, i32* %1, align 4
  br label %81

57:                                               ; preds = %0
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @XK_space, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @XK_asciitilde, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @XK_space, align 4
  %68 = sub nsw i32 %66, %67
  %69 = add nsw i32 %68, 32
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %65, %61, %57
  %71 = load i32, i32* %1, align 4
  %72 = icmp sge i32 %71, 65
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* %1, align 4
  %75 = icmp sle i32 %74, 90
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %1, align 4
  %78 = sub nsw i32 %77, 65
  %79 = add nsw i32 %78, 97
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %76, %73, %70
  br label %81

81:                                               ; preds = %80, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32 @XKeycodeToKeysym(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
