; ModuleID = '/home/carl/AnghaBench/db_tutorial/extr_db.c_serialize_row.c'
source_filename = "/home/carl/AnghaBench/db_tutorial/extr_db.c_serialize_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ID_OFFSET = common dso_local global i32 0, align 4
@ID_SIZE = common dso_local global i32 0, align 4
@USERNAME_OFFSET = common dso_local global i32 0, align 4
@USERNAME_SIZE = common dso_local global i32 0, align 4
@EMAIL_OFFSET = common dso_local global i32 0, align 4
@EMAIL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serialize_row(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* @ID_OFFSET, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr i8, i8* %5, i64 %7
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* @ID_SIZE, align 4
  %12 = call i32 @memcpy(i8* %8, i32* %10, i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @USERNAME_OFFSET, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %13, i64 %15
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* @USERNAME_SIZE, align 4
  %20 = call i32 @memcpy(i8* %16, i32* %18, i32 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @EMAIL_OFFSET, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %21, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* @EMAIL_SIZE, align 4
  %28 = call i32 @memcpy(i8* %24, i32* %26, i32 %27)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
