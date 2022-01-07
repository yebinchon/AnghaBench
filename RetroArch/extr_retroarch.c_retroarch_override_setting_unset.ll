; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_retroarch_override_setting_unset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_retroarch_override_setting_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@has_set_libretro_device = common dso_local global i32 0, align 4
@has_set_verbosity = common dso_local global i32 0, align 4
@has_set_libretro = common dso_local global i32 0, align 4
@has_set_libretro_directory = common dso_local global i32 0, align 4
@has_set_save_path = common dso_local global i32 0, align 4
@has_set_state_path = common dso_local global i32 0, align 4
@has_set_netplay_mode = common dso_local global i32 0, align 4
@has_set_netplay_ip_address = common dso_local global i32 0, align 4
@has_set_netplay_ip_port = common dso_local global i32 0, align 4
@has_set_netplay_stateless_mode = common dso_local global i32 0, align 4
@has_set_netplay_check_frames = common dso_local global i32 0, align 4
@has_set_ups_pref = common dso_local global i32 0, align 4
@has_set_bps_pref = common dso_local global i32 0, align 4
@has_set_ips_pref = common dso_local global i32 0, align 4
@has_set_log_to_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retroarch_override_setting_unset(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %35 [
    i32 140, label %8
    i32 128, label %20
    i32 141, label %21
    i32 139, label %22
    i32 131, label %23
    i32 130, label %24
    i32 134, label %25
    i32 136, label %26
    i32 135, label %27
    i32 133, label %28
    i32 137, label %29
    i32 129, label %30
    i32 143, label %31
    i32 142, label %32
    i32 138, label %33
    i32 132, label %34
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @has_set_libretro_device, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BIT256_CLEAR(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %8
  br label %36

20:                                               ; preds = %2
  store i32 0, i32* @has_set_verbosity, align 4
  br label %36

21:                                               ; preds = %2
  store i32 0, i32* @has_set_libretro, align 4
  br label %36

22:                                               ; preds = %2
  store i32 0, i32* @has_set_libretro_directory, align 4
  br label %36

23:                                               ; preds = %2
  store i32 0, i32* @has_set_save_path, align 4
  br label %36

24:                                               ; preds = %2
  store i32 0, i32* @has_set_state_path, align 4
  br label %36

25:                                               ; preds = %2
  store i32 0, i32* @has_set_netplay_mode, align 4
  br label %36

26:                                               ; preds = %2
  store i32 0, i32* @has_set_netplay_ip_address, align 4
  br label %36

27:                                               ; preds = %2
  store i32 0, i32* @has_set_netplay_ip_port, align 4
  br label %36

28:                                               ; preds = %2
  store i32 0, i32* @has_set_netplay_stateless_mode, align 4
  br label %36

29:                                               ; preds = %2
  store i32 0, i32* @has_set_netplay_check_frames, align 4
  br label %36

30:                                               ; preds = %2
  store i32 0, i32* @has_set_ups_pref, align 4
  br label %36

31:                                               ; preds = %2
  store i32 0, i32* @has_set_bps_pref, align 4
  br label %36

32:                                               ; preds = %2
  store i32 0, i32* @has_set_ips_pref, align 4
  br label %36

33:                                               ; preds = %2
  store i32 0, i32* @has_set_log_to_file, align 4
  br label %36

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %2, %34
  br label %36

36:                                               ; preds = %35, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19
  ret void
}

declare dso_local i32 @BIT256_CLEAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
