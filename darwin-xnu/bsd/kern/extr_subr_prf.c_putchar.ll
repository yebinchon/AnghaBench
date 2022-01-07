; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prf.c_putchar.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prf.c_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.putchar_args = type { i32, i32* }

@debugger_panic_str = common dso_local global i64 0, align 8
@constty = common dso_local global i32* null, align 8
@TOCONS = common dso_local global i32 0, align 4
@TOTTY = common dso_local global i32 0, align 4
@TOLOG = common dso_local global i32 0, align 4
@TOLOGLOCKED = common dso_local global i32 0, align 4
@msgbufp = common dso_local global i32 0, align 4
@TOSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putchar(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.putchar_args*, align 8
  %6 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.putchar_args*
  store %struct.putchar_args* %8, %struct.putchar_args** %5, align 8
  %9 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %10 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to i8**
  store i8** %12, i8*** %6, align 8
  %13 = load i64, i64* @debugger_panic_str, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** @constty, align 8
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %18 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TOCONS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %25 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32*, i32** @constty, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32*, i32** @constty, align 8
  %33 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %34 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* @TOTTY, align 4
  %36 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %37 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %31, %28, %23, %16
  %41 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %42 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TOTTY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %40
  %48 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %49 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %55 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @tputchar(i32 %53, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %61 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TOCONS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %68 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** @constty, align 8
  %71 = icmp eq i32* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32* null, i32** @constty, align 8
  br label %73

73:                                               ; preds = %72, %66, %59, %52, %47, %40
  %74 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %75 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TOLOG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 13
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 127
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @log_putc(i32 %90)
  br label %92

92:                                               ; preds = %89, %86, %83, %80, %73
  %93 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %94 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TOLOGLOCKED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %92
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 13
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 127
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* @msgbufp, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @log_putc_locked(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %105, %102, %99, %92
  %113 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %114 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @TOCONS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load i32*, i32** @constty, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32, i32* %3, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @v_putc(i32 %126)
  br label %128

128:                                              ; preds = %125, %122, %119, %112
  %129 = load %struct.putchar_args*, %struct.putchar_args** %5, align 8
  %130 = getelementptr inbounds %struct.putchar_args, %struct.putchar_args* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TOSTR, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %128
  %136 = load i32, i32* %3, align 4
  %137 = trunc i32 %136 to i8
  %138 = load i8**, i8*** %6, align 8
  %139 = load i8*, i8** %138, align 8
  store i8 %137, i8* %139, align 1
  %140 = load i8**, i8*** %6, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %140, align 8
  br label %143

143:                                              ; preds = %135, %128
  ret void
}

declare dso_local i64 @tputchar(i32, i32*) #1

declare dso_local i32 @log_putc(i32) #1

declare dso_local i32 @log_putc_locked(i32, i32) #1

declare dso_local i32 @v_putc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
