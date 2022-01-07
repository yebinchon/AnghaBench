; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_ff_amf_write_string2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_ff_amf_write_string2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMF_DATA_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_amf_write_string2(i32** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32**, i32*** %4, align 8
  %22 = load i32, i32* @AMF_DATA_TYPE_STRING, align 4
  %23 = call i32 @bytestream_put_byte(i32** %21, i32 %22)
  %24 = load i32**, i32*** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @bytestream_put_be16(i32** %24, i32 %27)
  %29 = load i32**, i32*** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @bytestream_put_buffer(i32** %29, i8* %30, i32 %31)
  %33 = load i32**, i32*** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @bytestream_put_buffer(i32** %33, i8* %34, i32 %35)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_be16(i32**, i32) #1

declare dso_local i32 @bytestream_put_buffer(i32**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
