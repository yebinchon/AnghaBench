; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_get_imm_str_s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_get_imm_str_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_imm_str_s.str = internal global [15 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [4 x i8] c"#%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_imm_str_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_imm_str_s(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = call i32 (...) @read_imm_8()
  %7 = call i8* @make_signed_hex_str_8(i32 %6)
  %8 = call i32 @sprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_imm_str_s.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = call i32 (...) @read_imm_16()
  %14 = call i8* @make_signed_hex_str_16(i32 %13)
  %15 = call i32 @sprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_imm_str_s.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %20

16:                                               ; preds = %9
  %17 = call i32 (...) @read_imm_32()
  %18 = call i8* @make_signed_hex_str_32(i32 %17)
  %19 = call i32 @sprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_imm_str_s.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16, %12
  br label %21

21:                                               ; preds = %20, %5
  ret i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_imm_str_s.str, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @make_signed_hex_str_8(i32) #1

declare dso_local i32 @read_imm_8(...) #1

declare dso_local i8* @make_signed_hex_str_16(i32) #1

declare dso_local i32 @read_imm_16(...) #1

declare dso_local i8* @make_signed_hex_str_32(i32) #1

declare dso_local i32 @read_imm_32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
