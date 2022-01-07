; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_desa_lineE.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_desa_lineE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i8, i8, i32 }

@desa_lineE.shf_ascii = internal global [4 x i8] c"SSOO", align 1
@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @desa_lineE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desa_lineE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %40

6:                                                ; preds = %0
  store i32 508, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %9 = shl i32 1, %8
  %10 = and i32 508, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %6
  %17 = call i32 (...) @desa_dcw()
  br label %84

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* @desa_lineE.shf_ascii, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @desa_ascii(i8 signext %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %25 = and i32 %24, 256
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 76, i32 82
  %29 = trunc i32 %28 to i8
  %30 = call i32 @desa_char(i8 signext %29)
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = call i32 @desa_char(i8 signext 88)
  br label %35

35:                                               ; preds = %33, %18
  %36 = call i32 @desa_char(i8 signext 32)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 6), align 4
  %38 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 4), align 4
  %39 = call i32 @get_ea_2(i32 %37, i8 signext %38, i32 0)
  br label %84

40:                                               ; preds = %0
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %42 = ashr i32 %41, 3
  %43 = and i32 %42, 3
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* @desa_lineE.shf_ascii, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @desa_ascii(i8 signext %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %50 = and i32 %49, 256
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 76, i32 82
  %54 = trunc i32 %53 to i8
  %55 = call i32 @desa_char(i8 signext %54)
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = call i32 @desa_char(i8 signext 88)
  br label %60

60:                                               ; preds = %58, %40
  %61 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 5), align 1
  %62 = call i32 @desa_ascii(i8 signext %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  %68 = add nsw i32 2114608, %67
  %69 = trunc i32 %68 to i8
  %70 = call i32 @desa_ascii(i8 signext %69)
  br label %78

71:                                               ; preds = %60
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %73, 7
  %75 = add nsw i32 2106161, %74
  %76 = trunc i32 %75 to i8
  %77 = call i32 @desa_ascii(i8 signext %76)
  br label %78

78:                                               ; preds = %71, %66
  %79 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 4), align 4
  %80 = sext i8 %79 to i32
  %81 = add nsw i32 2901040, %80
  %82 = trunc i32 %81 to i8
  %83 = call i32 @desa_ascii(i8 signext %82)
  br label %84

84:                                               ; preds = %16, %78, %35
  ret void
}

declare dso_local i32 @desa_dcw(...) #1

declare dso_local i32 @desa_ascii(i8 signext) #1

declare dso_local i32 @desa_char(i8 signext) #1

declare dso_local i32 @get_ea_2(i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
