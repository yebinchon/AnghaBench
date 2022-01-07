; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuimem.c_yui_mem_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuimem.c_yui_mem_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @yui_mem_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_mem_update(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = alloca [30 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gtk_list_store_clear(i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %58, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 8, %20
  %22 = add nsw i32 %19, %21
  %23 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %43, %15
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 8, %36
  %38 = add nsw i32 %35, %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @MappedMemoryReadByte(i32 %40)
  %42 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gtk_list_store_append(i32 %49, i32* %5)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GTK_LIST_STORE(i32 %53)
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %56 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %57 = call i32 @gtk_list_store_set(i32 %54, i32* %5, i32 0, i8* %55, i32 1, i8* %56, i32 -1)
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %12

61:                                               ; preds = %12
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GTK_BIN(i32 %69)
  %71 = call i32 @gtk_bin_get_child(i32 %70)
  %72 = call i32 @GTK_ENTRY(i32 %71)
  %73 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %74 = call i32 @gtk_entry_set_text(i32 %72, i8* %73)
  ret void
}

declare dso_local i32 @gtk_list_store_clear(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @MappedMemoryReadByte(i32) #1

declare dso_local i32 @gtk_list_store_append(i32, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32, i32*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

declare dso_local i32 @GTK_ENTRY(i32) #1

declare dso_local i32 @gtk_bin_get_child(i32) #1

declare dso_local i32 @GTK_BIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
