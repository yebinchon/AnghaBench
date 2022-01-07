; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_anamorphic_20_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_anamorphic_20_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"PicturePAR\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"UsesPictureSettings\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"PictureModulus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @import_anamorphic_20_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_anamorphic_20_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @hb_dict_get(i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @hb_value_type(i32* %7)
  %9 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @hb_value_get_string(i32* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @hb_value_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @hb_dict_set(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @hb_value_int(i32 2)
  %23 = call i32 @hb_dict_set(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @hb_value_int(i32 2)
  %26 = call i32 @hb_dict_set(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %17, %11
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32 @hb_value_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
