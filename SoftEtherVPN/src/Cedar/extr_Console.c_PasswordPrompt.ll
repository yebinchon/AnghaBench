; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_PasswordPrompt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_PasswordPrompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PasswordPrompt(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %122

22:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @Zero(i8* %23, i32 %24)
  %26 = call i8* (...) @SetConsoleRaw()
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %22, %113
  %28 = load i32, i32* @stdin, align 4
  %29 = call i32 @getc(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 32
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %33, 126
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 %42, i8* %47, align 1
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @putc(i32 42, i32 %48)
  br label %50

50:                                               ; preds = %40, %35
  br label %113

51:                                               ; preds = %32, %27
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @exit(i32 0) #3
  unreachable

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 26
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 13
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %76

68:                                               ; preds = %65, %62, %59, %56
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 26
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  store i32 1, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %114

76:                                               ; preds = %65
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 224
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* @stdin, align 4
  %81 = call i32 @getc(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 75
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 83
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %79
  br label %93

88:                                               ; preds = %84
  br label %110

89:                                               ; preds = %76
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92, %87
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %94, 1
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i32, i32* @stdout, align 4
  %103 = call i32 @putc(i32 8, i32 %102)
  %104 = load i32, i32* @stdout, align 4
  %105 = call i32 @putc(i32 32, i32 %104)
  %106 = load i32, i32* @stdout, align 4
  %107 = call i32 @putc(i32 8, i32 %106)
  br label %108

108:                                              ; preds = %96, %93
  br label %109

109:                                              ; preds = %108, %89
  br label %110

110:                                              ; preds = %109, %88
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %50
  br label %27

114:                                              ; preds = %75
  %115 = call i32 @Print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @RestoreConsole(i8* %116)
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 0, i32 1
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %114, %21
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i8* @SetConsoleRaw(...) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @putc(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @Print(i8*) #1

declare dso_local i32 @RestoreConsole(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
