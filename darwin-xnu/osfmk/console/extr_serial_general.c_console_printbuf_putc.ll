; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_general.c_console_printbuf_putc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_general.c_console_printbuf_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console_printbuf_state = type { i32, i32, i32*, i32 }

@SERIAL_CONS_BUF_SIZE = common dso_local global i32 0, align 4
@serialmode = common dso_local global i32 0, align 4
@SERIALMODE_SYNCDRAIN = common dso_local global i32 0, align 4
@CONS_PB_WRITE_NEWLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @console_printbuf_putc(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.console_printbuf_state*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.console_printbuf_state*
  store %struct.console_printbuf_state* %7, %struct.console_printbuf_state** %5, align 8
  %8 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %9 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %13 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SERIAL_CONS_BUF_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %21 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %24 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32 %19, i32* %27, align 4
  %28 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %29 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %71

32:                                               ; preds = %2
  %33 = load i32, i32* @serialmode, align 4
  %34 = load i32, i32* @SERIALMODE_SYNCDRAIN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %32
  %38 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %39 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %42 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %47 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %51 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 @console_write(i8* %49, i64 %53)
  %55 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %56 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %59 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %62 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32 %57, i32* %65, align 4
  %66 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %67 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %37, %32
  br label %71

71:                                               ; preds = %70, %18
  %72 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %73 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %76 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %109

82:                                               ; preds = %71
  %83 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %84 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CONS_PB_WRITE_NEWLINE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %91 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to i8*
  %94 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %95 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 @console_write(i8* %93, i64 %97)
  %99 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %100 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %102 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.console_printbuf_state*, %struct.console_printbuf_state** %5, align 8
  %105 = getelementptr inbounds %struct.console_printbuf_state, %struct.console_printbuf_state* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %89, %82, %71
  ret void
}

declare dso_local i32 @console_write(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
