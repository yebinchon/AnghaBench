; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ffhash.c_finish.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ffhash.c_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_HASH_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@hash = common dso_local global i32 0, align 4
@out_b64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"b64:%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @AV_HASH_MAX_SIZE, align 4
  %4 = mul nsw i32 2, %3
  %5 = add nsw i32 %4, 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @hash, align 4
  %10 = call i8* @av_hash_get_name(i32 %9)
  %11 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i64, i64* @out_b64, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, i32* @hash, align 4
  %16 = trunc i64 %6 to i32
  %17 = call i32 @av_hash_final_b64(i32 %15, i8* %8, i32 %16)
  %18 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  br label %24

19:                                               ; preds = %0
  %20 = load i32, i32* @hash, align 4
  %21 = trunc i64 %6 to i32
  %22 = call i32 @av_hash_final_hex(i32 %20, i8* %8, i32 %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %25)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @av_hash_get_name(i32) #2

declare dso_local i32 @av_hash_final_b64(i32, i8*, i32) #2

declare dso_local i32 @av_hash_final_hex(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
