; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_thumbnails_ident.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_thumbnails_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8, i8 }

@.str = private unnamed_addr constant [12 x i8] c"Named_Snaps\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Named_Titles\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Named_Boxarts\00", align 1
@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @stripes_thumbnails_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stripes_thumbnails_ident(i8 signext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8 %0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  %6 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %5, align 8
  %7 = load i8, i8* %3, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 82
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %4, align 1
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 76
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %4, align 1
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %31 [
    i32 1, label %27
    i32 2, label %28
    i32 3, label %29
    i32 0, label %30
  ]

27:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %35

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %35

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %24, %30
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %34 = call i8* @msg_hash_to_str(i32 %33)
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %32, %29, %28, %27
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
