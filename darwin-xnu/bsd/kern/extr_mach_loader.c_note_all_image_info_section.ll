; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_note_all_image_info_section.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_note_all_image_info_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segment_command_64 = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%union.anon = type { %struct.section_64 }
%struct.section_64 = type { i32, i32, i32 }
%struct.section = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"__DATA\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"__all_image_info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.segment_command_64*, i64, i64, i8*, i64, %struct.TYPE_3__*)* @note_all_image_info_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_all_image_info_section(%struct.segment_command_64* %0, i64 %1, i64 %2, i8* %3, i64 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca %struct.segment_command_64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %union.anon*, align 8
  %14 = alloca i32, align 4
  store %struct.segment_command_64* %0, %struct.segment_command_64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %15 = load %struct.segment_command_64*, %struct.segment_command_64** %7, align 8
  %16 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strncmp(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %86

21:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %83, %21
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.segment_command_64*, %struct.segment_command_64** %7, align 8
  %25 = getelementptr inbounds %struct.segment_command_64, %struct.segment_command_64* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %22
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %30, %32
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = bitcast i8* %34 to %union.anon*
  store %union.anon* %35, %union.anon** %13, align 8
  %36 = load %union.anon*, %union.anon** %13, align 8
  %37 = bitcast %union.anon* %36 to %struct.section_64*
  %38 = getelementptr inbounds %struct.section_64, %struct.section_64* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strncmp(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %41 = icmp eq i64 0, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %28
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %union.anon*, %union.anon** %13, align 8
  %47 = bitcast %union.anon* %46 to %struct.section_64*
  %48 = getelementptr inbounds %struct.section_64, %struct.section_64* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %55

50:                                               ; preds = %42
  %51 = load %union.anon*, %union.anon** %13, align 8
  %52 = bitcast %union.anon* %51 to %struct.section*
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i32 [ %49, %45 ], [ %54, %50 ]
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load %union.anon*, %union.anon** %13, align 8
  %70 = bitcast %union.anon* %69 to %struct.section_64*
  %71 = getelementptr inbounds %struct.section_64, %struct.section_64* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %78

73:                                               ; preds = %55
  %74 = load %union.anon*, %union.anon** %13, align 8
  %75 = bitcast %union.anon* %74 to %struct.section*
  %76 = getelementptr inbounds %struct.section, %struct.section* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i32 [ %72, %68 ], [ %77, %73 ]
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %86

82:                                               ; preds = %28
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %14, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %22

86:                                               ; preds = %20, %78, %22
  ret void
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
