; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsnd_send_info_query.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsnd_send_info_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@RSD_PROTO_MAXSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c" INFO %lld\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"RSD%5d%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @rsnd_send_info_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_send_info_query(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load i32, i32* @RSD_PROTO_MAXSIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @RSD_PROTO_MAXSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %15 = load i32, i32* @RSD_PROTO_MAXSIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %11, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @RSD_PROTO_MAXSIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %11, i64 %24
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* @RSD_PROTO_MAXSIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i64 @strlen(i8* %11)
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %14, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %11)
  %31 = load i32, i32* @RSD_PROTO_MAXSIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %14, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @strlen(i8* %14)
  %40 = call i64 @rsnd_send_chunk(i32 %38, i8* %14, i64 %39, i32 0)
  %41 = call i64 @strlen(i8* %14)
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @rsnd_send_chunk(i32, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
