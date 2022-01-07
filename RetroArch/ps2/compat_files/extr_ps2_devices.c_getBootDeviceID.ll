; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_ps2_devices.c_getBootDeviceID.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_ps2_devices.c_getBootDeviceID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEVICE_MC0 = common dso_local global i32 0, align 4
@BOOT_DEVICE_MC0 = common dso_local global i32 0, align 4
@DEVICE_MC1 = common dso_local global i32 0, align 4
@BOOT_DEVICE_MC1 = common dso_local global i32 0, align 4
@DEVICE_CDROM = common dso_local global i32 0, align 4
@BOOT_DEVICE_CDROM = common dso_local global i32 0, align 4
@DEVICE_CDFS = common dso_local global i32 0, align 4
@BOOT_DEVICE_CDFS = common dso_local global i32 0, align 4
@DEVICE_MASS = common dso_local global i32 0, align 4
@BOOT_DEVICE_MASS = common dso_local global i32 0, align 4
@DEVICE_MASS0 = common dso_local global i32 0, align 4
@BOOT_DEVICE_MASS0 = common dso_local global i32 0, align 4
@DEVICE_HDD = common dso_local global i32 0, align 4
@BOOT_DEVICE_HDD = common dso_local global i32 0, align 4
@DEVICE_HDD0 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HDD0 = common dso_local global i32 0, align 4
@DEVICE_HOST = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST = common dso_local global i32 0, align 4
@DEVICE_HOST0 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST0 = common dso_local global i32 0, align 4
@DEVICE_HOST1 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST1 = common dso_local global i32 0, align 4
@DEVICE_HOST2 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST2 = common dso_local global i32 0, align 4
@DEVICE_HOST3 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST3 = common dso_local global i32 0, align 4
@DEVICE_HOST4 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST4 = common dso_local global i32 0, align 4
@DEVICE_HOST5 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST5 = common dso_local global i32 0, align 4
@DEVICE_HOST6 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST6 = common dso_local global i32 0, align 4
@DEVICE_HOST7 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST7 = common dso_local global i32 0, align 4
@DEVICE_HOST8 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST8 = common dso_local global i32 0, align 4
@DEVICE_HOST9 = common dso_local global i32 0, align 4
@BOOT_DEVICE_HOST9 = common dso_local global i32 0, align 4
@BOOT_DEVICE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getBootDeviceID(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @DEVICE_MC0, align 4
  %6 = call i32 @strncmp(i8* %4, i32 %5, i32 4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @BOOT_DEVICE_MC0, align 4
  store i32 %9, i32* %2, align 4
  br label %138

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @DEVICE_MC1, align 4
  %13 = call i32 @strncmp(i8* %11, i32 %12, i32 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @BOOT_DEVICE_MC1, align 4
  store i32 %16, i32* %2, align 4
  br label %138

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @DEVICE_CDROM, align 4
  %20 = call i32 @strncmp(i8* %18, i32 %19, i32 7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @BOOT_DEVICE_CDROM, align 4
  store i32 %23, i32* %2, align 4
  br label %138

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @DEVICE_CDFS, align 4
  %27 = call i32 @strncmp(i8* %25, i32 %26, i32 5)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @BOOT_DEVICE_CDFS, align 4
  store i32 %30, i32* %2, align 4
  br label %138

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* @DEVICE_MASS, align 4
  %34 = call i32 @strncmp(i8* %32, i32 %33, i32 5)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @BOOT_DEVICE_MASS, align 4
  store i32 %37, i32* %2, align 4
  br label %138

38:                                               ; preds = %31
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @DEVICE_MASS0, align 4
  %41 = call i32 @strncmp(i8* %39, i32 %40, i32 6)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @BOOT_DEVICE_MASS0, align 4
  store i32 %44, i32* %2, align 4
  br label %138

45:                                               ; preds = %38
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* @DEVICE_HDD, align 4
  %48 = call i32 @strncmp(i8* %46, i32 %47, i32 4)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @BOOT_DEVICE_HDD, align 4
  store i32 %51, i32* %2, align 4
  br label %138

52:                                               ; preds = %45
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* @DEVICE_HDD0, align 4
  %55 = call i32 @strncmp(i8* %53, i32 %54, i32 5)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @BOOT_DEVICE_HDD0, align 4
  store i32 %58, i32* %2, align 4
  br label %138

59:                                               ; preds = %52
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* @DEVICE_HOST, align 4
  %62 = call i32 @strncmp(i8* %60, i32 %61, i32 5)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @BOOT_DEVICE_HOST, align 4
  store i32 %65, i32* %2, align 4
  br label %138

66:                                               ; preds = %59
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* @DEVICE_HOST0, align 4
  %69 = call i32 @strncmp(i8* %67, i32 %68, i32 6)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @BOOT_DEVICE_HOST0, align 4
  store i32 %72, i32* %2, align 4
  br label %138

73:                                               ; preds = %66
  %74 = load i8*, i8** %3, align 8
  %75 = load i32, i32* @DEVICE_HOST1, align 4
  %76 = call i32 @strncmp(i8* %74, i32 %75, i32 6)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @BOOT_DEVICE_HOST1, align 4
  store i32 %79, i32* %2, align 4
  br label %138

80:                                               ; preds = %73
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* @DEVICE_HOST2, align 4
  %83 = call i32 @strncmp(i8* %81, i32 %82, i32 6)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @BOOT_DEVICE_HOST2, align 4
  store i32 %86, i32* %2, align 4
  br label %138

87:                                               ; preds = %80
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* @DEVICE_HOST3, align 4
  %90 = call i32 @strncmp(i8* %88, i32 %89, i32 6)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @BOOT_DEVICE_HOST3, align 4
  store i32 %93, i32* %2, align 4
  br label %138

94:                                               ; preds = %87
  %95 = load i8*, i8** %3, align 8
  %96 = load i32, i32* @DEVICE_HOST4, align 4
  %97 = call i32 @strncmp(i8* %95, i32 %96, i32 6)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @BOOT_DEVICE_HOST4, align 4
  store i32 %100, i32* %2, align 4
  br label %138

101:                                              ; preds = %94
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* @DEVICE_HOST5, align 4
  %104 = call i32 @strncmp(i8* %102, i32 %103, i32 6)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @BOOT_DEVICE_HOST5, align 4
  store i32 %107, i32* %2, align 4
  br label %138

108:                                              ; preds = %101
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* @DEVICE_HOST6, align 4
  %111 = call i32 @strncmp(i8* %109, i32 %110, i32 6)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @BOOT_DEVICE_HOST6, align 4
  store i32 %114, i32* %2, align 4
  br label %138

115:                                              ; preds = %108
  %116 = load i8*, i8** %3, align 8
  %117 = load i32, i32* @DEVICE_HOST7, align 4
  %118 = call i32 @strncmp(i8* %116, i32 %117, i32 6)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @BOOT_DEVICE_HOST7, align 4
  store i32 %121, i32* %2, align 4
  br label %138

122:                                              ; preds = %115
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* @DEVICE_HOST8, align 4
  %125 = call i32 @strncmp(i8* %123, i32 %124, i32 6)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @BOOT_DEVICE_HOST8, align 4
  store i32 %128, i32* %2, align 4
  br label %138

129:                                              ; preds = %122
  %130 = load i8*, i8** %3, align 8
  %131 = load i32, i32* @DEVICE_HOST9, align 4
  %132 = call i32 @strncmp(i8* %130, i32 %131, i32 6)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @BOOT_DEVICE_HOST9, align 4
  store i32 %135, i32* %2, align 4
  br label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @BOOT_DEVICE_UNKNOWN, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %136, %134, %127, %120, %113, %106, %99, %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15, %8
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
