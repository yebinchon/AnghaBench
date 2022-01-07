; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsnd_send_identity_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsnd_send_identity_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c" IDENTITY %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"RSD%5d%s\00", align 1
@RSD_PROTO_MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @rsnd_send_identity_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_send_identity_info(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %6, i32 255, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %14 = call i64 @strlen(i8* %13)
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %17 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %12, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %15, i8* %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 255
  store i8 0, i8* %18, align 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %25 = call i64 @strlen(i8* %24)
  %26 = call i64 @rsnd_send_chunk(i32 %22, i8* %23, i64 %25, i32 0)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @rsnd_send_chunk(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
