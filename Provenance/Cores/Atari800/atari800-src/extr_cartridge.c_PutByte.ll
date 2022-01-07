; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@active_cart = common dso_local global %struct.TYPE_6__* null, align 8
@CARTRIDGE_NONE = common dso_local global i32 0, align 4
@CARTRIDGE_piggyback = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @PutByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PutByte(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %91 [
    i32 130, label %16
    i32 134, label %19
    i32 132, label %22
    i32 128, label %22
    i32 131, label %25
    i32 129, label %28
    i32 133, label %31
    i32 153, label %34
    i32 150, label %37
    i32 147, label %40
    i32 140, label %40
    i32 154, label %43
    i32 138, label %43
    i32 151, label %46
    i32 142, label %46
    i32 156, label %46
    i32 148, label %49
    i32 141, label %49
    i32 155, label %52
    i32 139, label %52
    i32 152, label %55
    i32 143, label %55
    i32 157, label %57
    i32 144, label %61
    i32 145, label %61
    i32 146, label %61
    i32 149, label %61
    i32 137, label %68
    i32 136, label %68
    i32 135, label %68
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 3
  store i32 %18, i32* %8, align 4
  br label %98

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 7
  store i32 %21, i32* %8, align 4
  br label %98

22:                                               ; preds = %3, %3
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 15
  store i32 %24, i32* %8, align 4
  br label %98

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 31
  store i32 %27, i32* %8, align 4
  br label %98

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 63
  store i32 %30, i32* %8, align 4
  br label %98

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 127
  store i32 %33, i32* %8, align 4
  br label %98

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 128
  store i32 %36, i32* %8, align 4
  br label %98

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 129
  store i32 %39, i32* %8, align 4
  br label %98

40:                                               ; preds = %3, %3
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 131
  store i32 %42, i32* %8, align 4
  br label %98

43:                                               ; preds = %3, %3
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 135
  store i32 %45, i32* %8, align 4
  br label %98

46:                                               ; preds = %3, %3, %3
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 143
  store i32 %48, i32* %8, align 4
  br label %98

49:                                               ; preds = %3, %3
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 159
  store i32 %51, i32* %8, align 4
  br label %98

52:                                               ; preds = %3, %3
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 191
  store i32 %54, i32* %8, align 4
  br label %98

55:                                               ; preds = %3, %3
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %8, align 4
  br label %98

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 256
  %60 = and i32 %59, 32767
  store i32 %60, i32* %8, align 4
  br label %98

61:                                               ; preds = %3, %3, %3, %3
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 224
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %61
  br label %98

68:                                               ; preds = %3, %3, %3
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %90 [
    i32 54688, label %70
    i32 54689, label %75
    i32 54690, label %82
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 16128
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %8, align 4
  br label %90

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 255
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 63
  %80 = shl i32 %79, 8
  %81 = or i32 %77, %80
  store i32 %81, i32* %8, align 4
  br label %90

82:                                               ; preds = %68
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 16383
  %85 = load i32, i32* %6, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %86, 1
  %88 = shl i32 %87, 14
  %89 = or i32 %84, %88
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %68, %82, %75, %70
  br label %98

91:                                               ; preds = %3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @access_D5(%struct.TYPE_6__* %92, i32 %93, i32* %8)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %113

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %90, %67, %57, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @active_cart, align 8
  %108 = icmp eq %struct.TYPE_6__* %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @SwitchBank(i32 %110)
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %96, %112, %98
  ret void
}

declare dso_local i32 @access_D5(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @SwitchBank(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
