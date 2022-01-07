; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_put_source_file_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_put_source_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"$(SOURCE_DIR)/%s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_source_file_name(i32* %0, %struct.file_list* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.file_list*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.file_list* %1, %struct.file_list** %4, align 8
  %5 = load %struct.file_list*, %struct.file_list** %4, align 8
  %6 = getelementptr inbounds %struct.file_list, %struct.file_list* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 46
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.file_list*, %struct.file_list** %4, align 8
  %14 = getelementptr inbounds %struct.file_list, %struct.file_list* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.file_list*, %struct.file_list** %4, align 8
  %23 = getelementptr inbounds %struct.file_list, %struct.file_list* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %32

26:                                               ; preds = %12, %2
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.file_list*, %struct.file_list** %4, align 8
  %29 = getelementptr inbounds %struct.file_list, %struct.file_list* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
