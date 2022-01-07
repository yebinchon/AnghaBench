; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_deinit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@temporary_content = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s: %s.\0A\00", align 1
@MSG_REMOVING_TEMPORARY_CONTENT_FILE = common dso_local global i32 0, align 4
@MSG_FAILED_TO_REMOVE_TEMPORARY_FILE = common dso_local global i32 0, align 4
@content_rom_crc = common dso_local global i64 0, align 8
@_content_is_inited = common dso_local global i32 0, align 4
@core_does_not_need_content = common dso_local global i32 0, align 4
@pending_content_rom_crc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @content_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @temporary_content, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %40

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %34, %5
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @temporary_content, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @temporary_content, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  %21 = load i32, i32* @MSG_REMOVING_TEMPORARY_CONTENT_FILE, align 4
  %22 = call i32 @msg_hash_to_str(i32 %21)
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23)
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @filestream_delete(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %12
  %29 = load i32, i32* @MSG_FAILED_TO_REMOVE_TEMPORARY_FILE, align 4
  %30 = call i32 @msg_hash_to_str(i32 %29)
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %1, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @temporary_content, align 8
  %39 = call i32 @string_list_free(%struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %37, %0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @temporary_content, align 8
  store i64 0, i64* @content_rom_crc, align 8
  store i32 0, i32* @_content_is_inited, align 4
  store i32 0, i32* @core_does_not_need_content, align 4
  store i32 0, i32* @pending_content_rom_crc, align 4
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @filestream_delete(i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i32, i8*) #1

declare dso_local i32 @string_list_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
